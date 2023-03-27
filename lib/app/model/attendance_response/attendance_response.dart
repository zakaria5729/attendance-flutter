import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/util.dart';

part 'attendance_response.freezed.dart';
part 'attendance_response.g.dart';

@freezed
class AttendanceResponse with _$AttendanceResponse {
  const factory AttendanceResponse({
    dynamic code,
    final AttendanceData? data,
    @JsonKey(name: "app_message") final String? appMessage,
    @JsonKey(name: "user_message") final String? userMessage,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(JsonMap json) =>
      _$AttendanceResponseFromJson(json);
}

@freezed
class AttendanceData with _$AttendanceData {
  const factory AttendanceData({
    required final int id,
    required final String name,
    required final String uid,
    required final String latitude,
    required final String longitude,
    @JsonKey(name: "request_id") final String? requestId,
  }) = _AttendanceData;

  factory AttendanceData.fromJson(JsonMap json) =>
      _$AttendanceDataFromJson(json);
}
