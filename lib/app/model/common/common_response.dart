import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/utils/util.dart';

part 'common_response.freezed.dart';
part 'common_response.g.dart';

@freezed
class CommonResponse with _$CommonResponse {
  const factory CommonResponse({
    dynamic success,
    dynamic payload,
    dynamic status,
    String? message,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(JsonMap json) =>
      _$CommonResponseFromJson(json);
}
