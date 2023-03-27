import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../app/values/constants.dart';
import '../utils/util.dart';
import '../utils/environment.dart';
import '../../shared/utils/extensions.dart';
import '../../shared/network/api_response/api_response.dart';
import '../../shared/network/interceptors/dio_interceptor_wrapper.dart';

class ApiClient {
  late final Dio _dio;
  late final String _baseUrl;
  final Connectivity _connectivity;

  ApiClient(this._connectivity) {
    _baseUrl = getBaseUrl;

    _dio = Dio();
    setDefaultTimeout();

    _dio.interceptors.clear();
    _dio.setDioLogger();
    _dio.interceptors.add(
      DioInterceptorWrapper(_connectivity),
    );

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return null;
    };
  }

  Dio get getDioInstance {
    return _dio;
  }

  Future<APIResponse> postRequest(
    String path,
    dynamic request, {
    JsonMap? query,
    Options? options,
    String? newBaseUrl,
    ResponseType? responseType,
    bool checkStatusCodeOnly = false,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final apiResponse = await _dio.post(
        getFullUrl(path, newBaseUrl),
        data: request,
        options: options,
        queryParameters: query,
        onReceiveProgress: onReceiveProgress,
      );

      return apiResponse.handleApiResponse(
        checkStatusCodeOnly,
        responseType: responseType,
      );
    } catch (e) {
      return e.handleApiException();
    }
  }

  Future<APIResponse> putRequest(
    String path,
    dynamic request, {
    JsonMap? query,
    Options? options,
    String? newBaseUrl,
    ResponseType? responseType,
    bool checkStatusCodeOnly = false,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final apiResponse = await _dio.put(
        getFullUrl(path, newBaseUrl),
        data: request,
        options: options,
        queryParameters: query,
        onReceiveProgress: onReceiveProgress,
      );

      return apiResponse.handleApiResponse(
        checkStatusCodeOnly,
        responseType: responseType,
      );
    } catch (e) {
      return e.handleApiException();
    }
  }

  Future<APIResponse> deleteRequest(
    String path, {
    JsonMap? query,
    Options? options,
    String? newBaseUrl,
    ResponseType? responseType,
    bool checkStatusCodeOnly = false,
  }) async {
    try {
      final apiResponse = await _dio.delete(
        getFullUrl(path, newBaseUrl),
        queryParameters: query,
        options: options,
      );

      return apiResponse.handleApiResponse(
        checkStatusCodeOnly,
        responseType: responseType,
      );
    } catch (e) {
      return e.handleApiException();
    }
  }

  Future<APIResponse> getRequest(
    String path, {
    JsonMap? query,
    Options? options,
    String? newBaseUrl,
    ResponseType? responseType,
    bool checkStatusCodeOnly = false,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final apiResponse = await _dio.get(
        getFullUrl(path, newBaseUrl),
        options: options,
        queryParameters: query,
        onReceiveProgress: onReceiveProgress,
      );

      return apiResponse.handleApiResponse(
        checkStatusCodeOnly,
        responseType: responseType,
      );
    } catch (e) {
      return e.handleApiException();
    }
  }

  String getFullUrl(String path, String? newBaseUrl) {
    String url;

    if (_baseUrl.endsWith('/')) {
      url = _baseUrl.substring(0, _baseUrl.length - 1) + path;
    } else {
      url = _baseUrl + path;
    }

    if (newBaseUrl != null) {
      url = newBaseUrl + path;
    }

    return url;
  }

  void setDefaultTimeout() {
    _dio.options.sendTimeout = dioDefaultTimeout;
    _dio.options.connectTimeout = dioDefaultTimeout;
    _dio.options.receiveTimeout = dioDefaultTimeout;
  }
}
