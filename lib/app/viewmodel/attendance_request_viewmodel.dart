import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/utils/extensions.dart';
import '../model/attendance_request/attendance_request.dart';

final attendanceRequestViewModelProvider = StateNotifierProvider.autoDispose<
    _AttendanceRequestViewModel, AttendanceRequest>((ref) {
  return _AttendanceRequestViewModel();
});

class _AttendanceRequestViewModel extends StateNotifier<AttendanceRequest> {
  _AttendanceRequestViewModel() : super(const AttendanceRequest());

  void setName(String? value) {
    state = state.copyWith(name: value);
  }

  void setUserId(String? value) {
    state = state.copyWith(uid: value);
  }

  bool isInvalidRequest() {
    return state.name.isBlank || state.uid.isBlank;
  }

  AttendanceRequest getState() => state;
}
