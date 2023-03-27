import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/appbar_widget.dart';
import '../../common_widgets/circular_progress_widget.dart';
import '../../common_widgets/error_retry_widget.dart';
import '../../common_widgets/refresh_indicator_widget.dart';
import 'store_list_view_widget.dart';
import '../../viewmodel/store_viewmodel.dart';
import '../../state/store/store_state.dart';
import '../../../../shared/utils/extensions.dart';

class StoreView extends ConsumerStatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  ConsumerState<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends ConsumerState<StoreView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _refreshApi() async {
    ref.refresh(storeViewModelProvider);
  }

  @override
  Widget build(BuildContext context) {
    _listenStoreState();
    final storeViewModel = ref.watch(storeViewModelProvider);
    final storeViewModelNotifier = ref.read(storeViewModelProvider.notifier);
    storeViewModelNotifier.scrollListener(_scrollController);

    final isLoading = storeViewModelNotifier.isLoading;
    final isErrorOccurred = storeViewModelNotifier.isErrorOccurred;

    return Scaffold(
      appBar: AppBarWidget(
        title: "Stores",
        elevation: 1,
        isShowNavBackIcon: false,
      ),
      body: isLoading
          ? const CircularProgressWidget()
          : isErrorOccurred
              ? ErrorRetryWidget(
                  "${storeViewModel.error}",
                  onPressed: _refreshApi,
                )
              : RefreshIndicatorWidget(
                  onRefresh: _refreshApi,
                  child: StoreListViewWidget(
                    storeData: storeViewModel.data,
                    scrollController: _scrollController,
                    isFetchingNext: storeViewModel.isFetchingNext,
                  ),
                ),
    );
  }

  void _listenStoreState() {
    ref.listen<StoreState>(storeViewModelProvider, (previous, next) {
      final shouldShowError = !next.isFetchingNext && next.pageNo != 1;

      if (shouldShowError && !next.error.isBlank) {
        next.error.showSnackBar(context, ref);
      }
    });
  }
}
