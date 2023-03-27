import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';

import '../../translations/locale_keys.g.dart';
import '../provider/core_provider.dart';
import 'attendance_request_viewmodel.dart';
import '../state/attendance/attendance_state.dart';
import '../repository/attendance_respository/attendance_respository.dart';

final attendanceViewModelProvider =
    StateNotifierProvider.autoDispose<_AttendanceViewModel, AttendanceState>(
        (ref) {
  return _AttendanceViewModel(
    ref.read,
    ref.watch(attendanceRepositoryProvider),
  );
});

class _AttendanceViewModel extends StateNotifier<AttendanceState> {
  final Reader _reader;
  final AttendanceRepository _attendanceRepository;

  _AttendanceViewModel(
    this._reader,
    this._attendanceRepository,
  ) : super(const AttendanceState.initial());

  bool get isLoading => state == const AttendanceState.loading();

  Future<void> attendance() async {
    state = const AttendanceState.loading();
    final location = _reader(locationObjectProvider);

    final bool locationEnabled = await location.serviceEnabled();
    if (!locationEnabled) {
      state = AttendanceState.error(LocaleKeys.locationDisabled.tr());
      return;
    }

    PermissionStatus permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();

      if (permissionStatus == PermissionStatus.denied) {
        state = AttendanceState.error(LocaleKeys.locationDenied.tr());
        return;
      }
    }

    if (permissionStatus == PermissionStatus.deniedForever) {
      state = AttendanceState.error(
        LocaleKeys.locationPermanentlyDenied.tr(),
      );
      return;
    }

    try {
      final currentLocation = await location.getLocation();
      var attendanceRequest = _reader(
        attendanceRequestViewModelProvider,
      );

      attendanceRequest = attendanceRequest.copyWith(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude,
      );

      state = await _attendanceRepository.attendance(
        attendanceRequest,
      );
    } catch (e) {
      state = AttendanceState.error(e.toString());
    }
  }
}
