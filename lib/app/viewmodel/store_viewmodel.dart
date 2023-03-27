import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/store/store_state.dart';
import '../../shared/utils/extensions.dart';
import '../repository/store_respository/store_repository.dart';

class StoreViewModelNotifier extends StateNotifier<StoreState> {
  StoreViewModelNotifier(this._storeRepository)
      : super(StoreState(isLoading: true)) {
    getAllStoresPaginated();
  }

  final StoreRepository _storeRepository;

  Future<void> getAllStoresPaginated() async {
    final pageNo = state.pageNo;
    final isLoadingState = pageNo == 1;
    final isFetchingNextState = pageNo != 1;

    state = state.copyWith(
      error: null,
      isLoading: isLoadingState,
      isFetchingNext: isFetchingNextState,
    );

    final oldStateData = [...state.data];
    final result = await _storeRepository.getAllStores(pageNo);

    if (mounted) {
      final newData = [...oldStateData, ...result.data];
      final pageNo = result.error.isBlank ? (state.pageNo + 1) : state.pageNo;

      state = state.copyWith(
        data: newData,
        pageNo: pageNo,
        isLoading: false,
        error: result.error,
        isFetchingNext: false,
        isLastPage: result.isLastPage,
      );
    }
  }

  void scrollListener(ScrollController scrollController) {
    scrollController.addListener(() {
      final offset = scrollController.offset;
      final outOfRange = scrollController.position.outOfRange;
      final maxScrollExtent = scrollController.position.maxScrollExtent;

      if (mounted) {
        if (!state.isLastPage &&
            !state.isFetchingNext &&
            offset >= maxScrollExtent &&
            !outOfRange) {
          getAllStoresPaginated();
        }
      }
    });
  }

  bool get isData {
    return !isLoading && !isErrorOccurred;
  }

  bool get isLoading {
    return state.isLoading && state.data.isBlank;
  }

  bool get isErrorOccurred {
    return state.data.isBlank && !state.error.isBlank;
  }
}

final storeViewModelProvider = StateNotifierProvider.autoDispose<StoreViewModelNotifier, StoreState>((ref) => StoreViewModelNotifier(
    ref.watch(storeRepositoryProvider),
  ),
);