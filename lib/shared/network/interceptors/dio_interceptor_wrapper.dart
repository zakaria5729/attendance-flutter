import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../translations/locale_keys.g.dart';

class DioInterceptorWrapper extends QueuedInterceptorsWrapper {
  DioInterceptorWrapper(this._connectivity);

  final Connectivity _connectivity;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        return handler.reject(
          DioError(
            type: DioErrorType.other,
            requestOptions: options,
            error: LocaleKeys.internetConnectivityProblem.tr(),
          ),
          true,
        );
      }
    } catch (e) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: "Error: ${e.toString()}",
        ),
        true,
      );
    }

    options.headers.addAll({"Content-type": "application/json"});
    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
