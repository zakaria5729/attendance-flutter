// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreMeta _$$_StoreMetaFromJson(Map<String, dynamic> json) => _$_StoreMeta(
      to: json['to'] as int,
      from: json['from'] as int,
      total: json['total'] as int,
      path: json['path'] as String,
      perPage: json['per_page'] as int,
      lastPage: json['last_page'] as int,
      currentPage: json['current_page'] as int,
    );

Map<String, dynamic> _$$_StoreMetaToJson(_$_StoreMeta instance) =>
    <String, dynamic>{
      'to': instance.to,
      'from': instance.from,
      'total': instance.total,
      'path': instance.path,
      'per_page': instance.perPage,
      'last_page': instance.lastPage,
      'current_page': instance.currentPage,
    };
