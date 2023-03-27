import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/attendance_response/attendance_response.dart';

part 'attendance_state.freezed.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState.initial() = _Initial;
  const factory AttendanceState.loading() = _Loading;
  const factory AttendanceState.error(String error) = _Error;
  const factory AttendanceState.data(AttendanceResponse data) = _Data;
}
