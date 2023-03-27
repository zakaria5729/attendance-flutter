import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../shared/utils/extensions.dart';
import '../model/attendance_request/attendance_request.dart';

class AttendanceRequestViewModel extends StateNotifier<AttendanceRequest> {
  AttendanceRequestViewModel() : super(const AttendanceRequest()) {
    state = state.copyWith(requestId: Uuid().v1());
  }

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

final attendanceRequestViewModelProvider = StateNotifierProvider.autoDispose<
    AttendanceRequestViewModel, AttendanceRequest>((ref) {
  return AttendanceRequestViewModel();
});
