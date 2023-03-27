import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/utils/util.dart';

part 'stores_response.freezed.dart';
part 'stores_response.g.dart';

@freezed
class StoresResponse with _$StoresResponse {
  const factory StoresResponse({
    final StoreMeta? meta,
    @Default([]) List<StoreData> data,
  }) = _StoresResponse;

  factory StoresResponse.fromJson(JsonMap json) =>
      _$StoresResponseFromJson(json);
}

@freezed
class StoreData with _$StoreData {
  const factory StoreData({
    required final int id,
    final String? name,
    final String? address,
  }) = _StoreData;

  factory StoreData.fromJson(JsonMap json) => _$StoreDataFromJson(json);
}

@freezed
class StoreMeta with _$StoreMeta {
  const factory StoreMeta({
    required final int to,
    required final int from,
    required final int total,
    required final String path,
    @JsonKey(name: "per_page")  required final int perPage,
    @JsonKey(name: "last_page")  required final int lastPage,
    @JsonKey(name: "current_page") required final int currentPage,
  }) = _StoreMeta;

  factory StoreMeta.fromJson(JsonMap json) => _$StoreMetaFromJson(json);
}
