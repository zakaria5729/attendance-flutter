import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/core_provider.dart';
import '../../state/attendance/attendance_state.dart';
import 'attendance_respository_impl.dart';
import '../../model/attendance_request/attendance_request.dart';

abstract class AttendanceRepository {
  Future<AttendanceState> attendance(
    AttendanceRequest attendanceRequest,
  );
}

final attendanceRepositoryProvider = Provider<AttendanceRepository>(
  (ref) => AttendanceRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
