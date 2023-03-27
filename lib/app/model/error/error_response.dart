import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/utils/util.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    dynamic status,
    String? error,
    String? message,
    String? path,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(JsonMap json) =>
      _$ErrorResponseFromJson(json);
}
