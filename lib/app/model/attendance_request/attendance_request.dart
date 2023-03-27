import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/util.dart';

part 'attendance_request.freezed.dart';
part 'attendance_request.g.dart';

@freezed
class AttendanceRequest with _$AttendanceRequest {
  const factory AttendanceRequest({
    final String? name,
    final String? uid,
    final double? latitude,
    final double? longitude,
    @JsonKey(name: "request_id") final String? requestId,
  }) = _AttendanceRequest;

  factory AttendanceRequest.fromJson(JsonMap json) =>
      _$AttendanceRequestFromJson(json);
}
