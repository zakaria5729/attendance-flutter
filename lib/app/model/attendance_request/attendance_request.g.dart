// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceRequest _$$_AttendanceRequestFromJson(Map<String, dynamic> json) =>
    _$_AttendanceRequest(
      name: json['name'] as String?,
      uid: json['uid'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      requestId: json['request_id'] as String?,
    );

Map<String, dynamic> _$$_AttendanceRequestToJson(
        _$_AttendanceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'request_id': instance.requestId,
    };
