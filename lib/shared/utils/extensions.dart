import 'dart:io';
import 'dart:core';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../app/model/common/common_response.dart';
import '../../app/model/error/error_response.dart';
import '../../app/values/app_colors.dart';
import '../../app/values/app_font_size.dart';
import '../../shared/network/api_response/api_response.dart';
import '../../translations/locale_keys.g.dart';
import '../network/interceptors/dio_interceptor_logger.dart';
import 'util.dart';

extension AllCapitalizeExt on String {
  String allCapitalize({String removeCase = ' '}) {
    return toLowerCase().split(removeCase).map((word) {
      String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
      return word[0].toUpperCase() + leftText;
    }).join(' ');
  }
}

extension CapitalizeExt on String {
  String capitalize({String? removeCase}) {
    if (this.isBlank) return "";
    if (this.length == 1) return this.toUpperCase();
    final value = "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

    if (!removeCase.isBlank && !value.isBlank) {
      return value.replaceAll(removeCase!, " ");
    }

    return value;
  }
}

extension BlankCheckExt on String? {
  get isBlank {
    return this == null || this!.isEmpty;
  }
}

extension BlankListCheckExt on List<dynamic>? {
  bool get isBlank {
    return this == null || this!.isEmpty;
  }
}

extension ShowSnackBarExt on String? {
  void showSnackBar(
    BuildContext context,
    WidgetRef ref, {
    int popDurationInSec = 3,
    int snackDurationInSec = 3,
  }) {
    Future.delayed(Duration.zero).then((_) async {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();

      final snackBar = SnackBar(
        content: Text(
          this ?? LocaleKeys.somethingWentWrong.tr(),
          style: const TextStyle(
            fontSize: fontSize14,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: snackDurationInSec),
        action: SnackBarAction(
          label: LocaleKeys.dismiss.tr(),
          textColor: colorRed,
          onPressed: () {},
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }
}

extension AsOptionsExt on RequestOptions {
  Options asOptions() {
    return Options(
      method: method,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
      extra: extra,
      headers: headers,
      responseType: responseType,
      contentType: contentType,
      validateStatus: validateStatus,
      receiveDataWhenStatusError: receiveDataWhenStatusError,
      followRedirects: followRedirects,
      maxRedirects: maxRedirects,
      requestEncoder: requestEncoder,
      responseDecoder: responseDecoder,
      listFormat: listFormat,
    );
  }
}

extension CheckNetworkErrorEx on String? {
  bool get isNetworkError {
    return this == LocaleKeys.internetConnectivityProblem.tr();
  }
}

extension GetExceptionExt on Object {
  APIResponse handleApiException() {
    final e = this;
    if (e is DioError) {
      if (e.error is SocketException ||
          e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return APIResponse.error(LocaleKeys.checkInternetConnectionFirst.tr());
      }

      return APIResponse.error(e.getDioErrorResponse());
    } else if (e is FormatException) {
      return APIResponse.error(LocaleKeys.apiFormatException.tr());
    } else {
      return APIResponse.error(e.toString());
    }
  }
}

extension GetApiResponseExt on Response<dynamic> {
  APIResponse handleApiResponse(
    bool checkStatusCodeOnly, {
    ResponseType? responseType,
  }) {
    final responseData = data;
    final int statusCode = this.statusCode ?? 400;
    final successStatus = statusCode >= 200 && statusCode <= 299;

    if (responseType == ResponseType.bytes && successStatus) {
      return APIResponse.success(responseData);
    } else if (responseData is JsonMap || responseData is List) {
      if (checkStatusCodeOnly && successStatus) {
        return APIResponse.success(responseData);
      } else {
        if (responseData['success'] == true) {
          return APIResponse.success(responseData);
        } else {
          return APIResponse.error(
            responseData['message'] ?? LocaleKeys.somethingWentWrong.tr(),
          );
        }
      }
    } else {
      if (responseData != null && responseData != "") {
        String errorText = LocaleKeys.somethingWentWrong.tr();
        var errors = "$data".split("\n");

        for (int i = 0; i < errors.length; i++) {
          if (i < 12) errorText += errors[i];
        }

        return APIResponse.error(errorText);
      } else {
        return APIResponse.error(
            statusMessage ?? LocaleKeys.somethingWentWrong.tr());
      }
    }
  }
}

extension GetDioErrorExt on DioError {
  String getDioErrorResponse() {
    final DioError e = this;
    final response = e.response;
    final statusCode = response?.statusCode;

    if (response?.data != null) {
      try {
        if (statusCode != null && statusCode == 401 ||
            statusCode == 403 ||
            statusCode == 404 ||
            statusCode! >= 500) {
          if (statusCode! >= 500) {
            return "${LocaleKeys.internalServerError.tr()}: $statusCode";
          } else {
            final errorResponse = ErrorResponse.fromJson(response?.data);
            final message = errorResponse.message;
            final error = errorResponse.error;

            var errorMessage =
                message != null && message.isNotEmpty ? message : error;

            if (statusCode == 404) {
              errorMessage = "$errorMessage (${statusCode})";

              if (error != null && error.isNotEmpty) {
                errorMessage = "$error : ${errorResponse.path}";
              }
            }

            errorMessage = errorMessage ?? LocaleKeys.somethingWentWrong.tr();
            return errorMessage;
          }
        } else {
          final commonResponse = CommonResponse.fromJson(response?.data);
          return commonResponse.message ?? LocaleKeys.somethingWentWrong.tr();
        }
      } catch (e) {
        return e.toString();
      }
    } else {
      return e.message;
    }
  }
}

extension GetDioLoggerExt on Dio {
  void setDioLogger({List<String>? excludeUrlPaths}) {
    if (!kReleaseMode) {
      interceptors.add(
        DioInterceptorLogger(
          logRequestHeaders: true,
          logRequestTimeout: false,
          logResponseHeaders: false,
          excludeUrlPaths: excludeUrlPaths,
        ),
      );
    }
  }
}

extension InternetConnectedCheckExt on WidgetRef {
  Future<bool> isInternetConnected(
    BuildContext context, {
    bool isShowAlert = false,
    String? connectityMessage,
  }) async {
    bool isConnected = false;
    String message =
        connectityMessage ?? LocaleKeys.internetConnectivityProblem.tr();

    try {
      var connectivityResult =
          await read(connectivityProvider).checkConnectivity();

      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        isConnected = true;
      }
    } catch (e) {
      message += ": ${e.toString()}";
    }

    if (isShowAlert && !isConnected) {
      message.showSnackBar(
        context,
        this
      );
    }

    return isConnected;
  }
}

extension HideSnackBarAndPopDelayExt on BuildContext {
  void hideSnackBar({bool delayNeeded = true}) {
    if (delayNeeded) {
      Future.delayed(Duration.zero).then((_) {
        ScaffoldMessenger.of(this).removeCurrentSnackBar();
      });
    } else {
      ScaffoldMessenger.of(this).removeCurrentSnackBar();
    }
  }

  void popDelayed({int delaySecond = 1}) {
    Future.delayed(Duration(seconds: delaySecond)).then((_) {
      if (Navigator.canPop(this)) {
        Navigator.pop(this);
      }
    });
  }
}
