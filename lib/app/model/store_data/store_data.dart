import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/utils/util.dart';

part 'store_data.freezed.dart';
part 'store_data.g.dart';

@freezed
class StoreData with _$StoreData {
  const factory StoreData({
    required final int id,
    final String? name,
    final String? address,
  }) = _StoreData;

  factory StoreData.fromJson(JsonMap json) => _$StoreDataFromJson(json);
}
