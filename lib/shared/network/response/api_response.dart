import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T value) = ApiSuccess<T>;
  const factory ApiResponse.error(String message) = ApiError;
}
