import 'package:dio/dio.dart';

import 'attendance_respository.dart';
import '../../values/api_endpoints.dart';
import '../../../shared/network/api_client.dart';
import '../../state/attendance/attendance_state.dart';
import '../../model/attendance_request/attendance_request.dart';
import '../../model/attendance_response/attendance_response.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final ApiClient _apiClient;

  const AttendanceRepositoryImpl(this._apiClient);

  Future<AttendanceState> attendance(
    AttendanceRequest attendanceRequest,
  ) async {
    final formDataRequest = FormData.fromMap(
      attendanceRequest.toJson(),
    );

    final response = await _apiClient.postRequest(
      attendanceApi,
      formDataRequest,
      checkStatusCodeOnly: true,
    );

    return response.when(success: (success) {
      return AttendanceState.data(
        AttendanceResponse.fromJson(success),
      );
    }, error: (error) {
      return AttendanceState.error(error);
    });
  }
}
