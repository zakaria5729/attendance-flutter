// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceResponse _$$_AttendanceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: json['payload'],
    );

Map<String, dynamic> _$$_AttendanceResponseToJson(
        _$_AttendanceResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };
