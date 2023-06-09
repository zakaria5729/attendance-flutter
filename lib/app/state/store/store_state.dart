import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/stores_response/stores_response.dart';

part 'store_state.freezed.dart';

@freezed
class StoreState with _$StoreState {
  const factory StoreState({
    final String? error,
    @Default(1) int pageNo,
    @Default(false) bool isLoading,
    @Default(false) bool isLastPage,
    @Default([]) List<StoreData> data,
    @Default(false) bool isFetchingNext,
  }) = _StoreState;
}
