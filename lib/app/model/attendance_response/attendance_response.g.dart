// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceResponse _$$_AttendanceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceResponse(
      code: json['code'],
      data: json['data'] == null
          ? null
          : AttendanceData.fromJson(json['data'] as Map<String, dynamic>),
      appMessage: json['app_message'] as String?,
      userMessage: json['user_message'] as String?,
    );

Map<String, dynamic> _$$_AttendanceResponseToJson(
        _$_AttendanceResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'app_message': instance.appMessage,
      'user_message': instance.userMessage,
    };

_$_AttendanceData _$$_AttendanceDataFromJson(Map<String, dynamic> json) =>
    _$_AttendanceData(
      id: json['id'] as int,
      name: json['name'] as String,
      uid: json['uid'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      requestId: json['request_id'] as String?,
    );

Map<String, dynamic> _$$_AttendanceDataToJson(_$_AttendanceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uid': instance.uid,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'request_id': instance.requestId,
    };
