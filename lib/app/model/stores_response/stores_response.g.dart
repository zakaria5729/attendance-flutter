// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoresResponse _$$_StoresResponseFromJson(Map<String, dynamic> json) =>
    _$_StoresResponse(
      meta: json['meta'] == null
          ? null
          : StoreMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => StoreData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StoresResponseToJson(_$_StoresResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
