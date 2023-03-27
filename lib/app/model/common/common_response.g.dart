// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonResponse _$$_CommonResponseFromJson(Map<String, dynamic> json) =>
    _$_CommonResponse(
      success: json['success'],
      payload: json['payload'],
      status: json['status'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_CommonResponseToJson(_$_CommonResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'payload': instance.payload,
      'status': instance.status,
      'message': instance.message,
    };
