import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';

class DioInterceptorLogger implements Interceptor {
  DioInterceptorLogger({
    _Styles? requestStyle,
    _Styles? responseStyle,
    _Styles? errorStyle,
    bool logRequestHeaders = true,
    bool logResponseHeaders = true,
    bool logRequestTimeout = true,
    List<String>? excludeUrlPaths,
    void Function(String log)? logger,
  })  : _jsonEncoder = const JsonEncoder.withIndent('  '),
        _requestStyle = requestStyle ?? _defaultRequestStyle,
        _responseStyle = responseStyle ?? _defaultResponseStyle,
        _errorStyle = errorStyle ?? _defaultErrorStyle,
        _logRequestHeaders = logRequestHeaders,
        _logResponseHeaders = logResponseHeaders,
        _logRequestTimeout = logRequestTimeout,
        _excludeUrlPaths = excludeUrlPaths ?? [],
        _logger = logger ?? log;

  static const _Styles _defaultErrorStyle = _Styles.RED;
  static const _Styles _defaultRequestStyle = _Styles.BLUE;
  static const _Styles _defaultResponseStyle = _Styles.LIGHT_MAGENTA;

  late final JsonEncoder _jsonEncoder;
  late final bool _logRequestHeaders;
  late final bool _logResponseHeaders;
  late final bool _logRequestTimeout;
  late final void Function(String log) _logger;

  late final _Styles _requestStyle;
  late final _Styles _responseStyle;
  late final _Styles _errorStyle;
  final List<String> _excludeUrlPaths;

  void _log({required String key, required String value, _Styles? style}) {
    final coloredMessage = _Colorize('$key$value').apply(
      style ?? _Styles.LIGHT_GRAY,
    );
    _logger('$coloredMessage');
  }

  void _logJson({
    required String key,
    dynamic value,
    _Styles? style,
    bool isResponse = false,
  }) {
    final isFormData = value.runtimeType == FormData;
    final isValueNull = value == null;

    final encodedJson = _jsonEncoder.convert(
      isFormData ? Map.fromEntries((value as FormData).fields) : value,
    );
    _log(
      key: isResponse
          ? key
          : '${isFormData ? '[formData.fields]' : !isValueNull ? '[Json]' : ''} $key',
      value: encodedJson,
      style: style,
    );

    if (isFormData && !isResponse) {
      final files = (value as FormData)
          .files
          .map((e) => e.value.filename ?? 'Null or Empty filename')
          .toList();
      if (files.isNotEmpty) {
        final encodedJson = _jsonEncoder.convert(files);
        _log(
          key: '[formData.files] Request Body:\n',
          value: encodedJson,
          style: style,
        );
      }
    }
  }

  void _logHeaders({required Map headers, _Styles? style}) {
    _log(key: 'Headers:', value: '', style: style);
    headers.forEach((key, value) {
      _log(
        key: '\t$key: ',
        value: (value is List && value.length == 1)
            ? value.first
            : value.toString(),
        style: style,
      );
    });
  }

  void _logNewLine() => _log(key: '', value: '\n\n');

  void _logRequest(RequestOptions options, {_Styles? style}) {
    _log(key: '[Request] ->', value: '', style: _requestStyle);
    _log(key: 'Uri: ', value: options.uri.toString(), style: _requestStyle);
    _log(key: 'Method: ', value: options.method, style: _requestStyle);
    if (_logRequestHeaders) {
      _logHeaders(headers: options.headers, style: style);
    }

    final requestBody = options.data;
    if (requestBody != null) {
      _logJson(key: 'Request Body:\n', value: requestBody, style: style);
    } else {
      _logJson(key: 'Request Body: ', value: requestBody, style: style);
    }
    _log(
      key: 'Response Type: ',
      value: options.responseType.toString(),
      style: style,
    );
    _log(
      key: 'Follow Redirects: ',
      value: options.followRedirects.toString(),
      style: style,
    );
    if (_logRequestTimeout) {
      _log(
        key: 'Connection Timeout: ',
        value: options.connectTimeout.toString(),
        style: style,
      );
      _log(
        key: 'Send Timeout: ',
        value: options.sendTimeout.toString(),
        style: style,
      );
      _log(
        key: 'Receive Timeout: ',
        value: options.receiveTimeout.toString(),
        style: style,
      );
    }
    _log(
      key: 'Receive Data When Status Error: ',
      value: options.receiveDataWhenStatusError.toString(),
      style: style,
    );
    _log(key: 'Extra: ', value: options.extra.toString(), style: style);
  }

  void _logResponse(Response response, {_Styles? style, bool error = false}) {
    if (!error) {
      _log(key: '[Response] ->', value: '', style: style);
    }
    _log(key: 'Uri: ', value: response.realUri.toString(), style: style);
    _log(
      key: 'Request Method: ',
      value: response.requestOptions.method,
      style: style,
    );
    _log(key: 'Status Code: ', value: '${response.statusCode}', style: style);
    if (_logResponseHeaders) {
      _logHeaders(headers: response.headers.map, style: style);
    }
    _logJson(
      key: 'Response Body:\n',
      value: response.data,
      style: style,
      isResponse: true,
    );
  }

  void _logError(DioError err, {_Styles? style}) {
    _log(key: '[Error] ->', value: '', style: style);
    _log(
      key: 'DioError: ',
      value: '[${err.type.toString()}]: ${err.message}',
      style: style,
    );
  }

  void _delay() async => await Future.delayed(
        const Duration(milliseconds: 200),
      );

  bool _isExcludePath(RequestOptions options) {
    if (_excludeUrlPaths.isEmpty) {
      return false;
    }

    return _excludeUrlPaths.any((path) => options.path.contains(path));
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (!_isExcludePath(err.requestOptions)) {
      _logError(err, style: _errorStyle);
      if (err.response != null) {
        _logResponse(err.response!, error: true, style: _errorStyle);
      }

      _logNewLine();
      _delay();
    }

    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!_isExcludePath(options)) {
      _logRequest(options, style: _requestStyle);
      _logNewLine();
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!_isExcludePath(response.requestOptions)) {
      _logResponse(response, style: _responseStyle);
      _logNewLine();
    }

    handler.next(response);
  }
}

class _Colorize {
  static final String ESC = "\u{1B}";
  String initial = '';

  _Colorize([this.initial = '']);

  _Colorize apply(_Styles style, [String? text]) {
    if (text == null) {
      text = initial;
    }

    initial = _applyStyle(style, text);
    return this;
  }

  _Colorize bgBlue() {
    return apply(_Styles.BG_BLUE);
  }

  _Colorize bgGreen() {
    return apply(_Styles.BG_GREEN);
  }

  _Colorize bgRed() {
    return apply(_Styles.BG_RED);
  }

  _Colorize bgWhite() {
    return apply(_Styles.BG_WHITE);
  }

  _Colorize bgYellow() {
    return apply(_Styles.BG_YELLOW);
  }

  _Colorize blue() {
    return apply(_Styles.BLUE);
  }

  String buildEscSeq(_Styles style) {
    return ESC + "[${getStyle(style)}m";
  }

  _Colorize call(String text) {
    initial = text;
    return this;
  }

  _Colorize green() {
    return apply(_Styles.GREEN);
  }

  _Colorize red() {
    return apply(_Styles.RED);
  }

  String toString() {
    return initial;
  }

  _Colorize yellow() {
    return apply(_Styles.YELLOW);
  }

  _Colorize bgLightMagenta() {
    return apply(_Styles.LIGHT_MAGENTA);
  }

  String _applyStyle(_Styles style, String text) {
    return buildEscSeq(style) + text + buildEscSeq(_Styles.RESET);
  }

  static String getStyle(_Styles style) {
    switch (style) {
      case _Styles.RESET:
        return '0';
      case _Styles.RED:
        return '31';
      case _Styles.GREEN:
        return '32';
      case _Styles.YELLOW:
        return '33';
      case _Styles.BLUE:
        return '34';
      case _Styles.LIGHT_GRAY:
        return '37';
      case _Styles.LIGHT_RED:
        return '91';
      case _Styles.LIGHT_GREEN:
        return '92';
      case _Styles.LIGHT_YELLOW:
        return '93';
      case _Styles.LIGHT_BLUE:
        return '94';
      case _Styles.BG_RED:
        return '41';
      case _Styles.BG_GREEN:
        return '42';
      case _Styles.BG_YELLOW:
        return '43';
      case _Styles.BG_BLUE:
        return '44';
      case _Styles.BG_LIGHT_RED:
        return '101';
      case _Styles.BG_LIGHT_GREEN:
        return '102';
      case _Styles.BG_LIGHT_YELLOW:
        return '103';
      case _Styles.BG_LIGHT_BLUE:
        return '104';
      case _Styles.BG_WHITE:
        return '107';
      case _Styles.LIGHT_MAGENTA:
        return '95';
      default:
        return '';
    }
  }
}

enum _Styles {
  RESET,
  YELLOW,
  LIGHT_YELLOW,
  BG_YELLOW,
  BG_LIGHT_YELLOW,
  RED,
  LIGHT_RED,
  LIGHT_GRAY,
  BG_RED,
  BG_LIGHT_RED,
  GREEN,
  LIGHT_GREEN,
  BG_GREEN,
  BG_LIGHT_GREEN,
  BLUE,
  LIGHT_BLUE,
  BG_BLUE,
  BG_LIGHT_BLUE,
  BG_WHITE,
  LIGHT_MAGENTA,
}
