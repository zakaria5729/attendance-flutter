import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/util.dart';

part 'attendance_response.freezed.dart';
part 'attendance_response.g.dart';

@freezed
class AttendanceResponse with _$AttendanceResponse {
  const factory AttendanceResponse({
    dynamic success,
    final String? status,
    final String? message,
    final dynamic payload,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(JsonMap json) =>
      _$AttendanceResponseFromJson(json);
}
