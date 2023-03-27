import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/utils/util.dart';

part 'store_meta.freezed.dart';
part 'store_meta.g.dart';

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
