// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoresResponse _$$_StoresResponseFromJson(Map<String, dynamic> json) =>
    _$_StoresResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => StoreData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? null
          : StoreMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoresResponseToJson(_$_StoresResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
