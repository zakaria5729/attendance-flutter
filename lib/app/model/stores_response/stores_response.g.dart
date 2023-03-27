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

_$_StoreData _$$_StoreDataFromJson(Map<String, dynamic> json) => _$_StoreData(
      id: json['id'] as int,
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_StoreDataToJson(_$_StoreData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };

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
