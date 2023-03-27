import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/utils/util.dart';
import '../store_data/store_data.dart';
import '../store_meta/store_meta.dart';

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
