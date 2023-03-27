import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'store_repository_impl.dart';
import '../../provider/core_provider.dart';
import '../../state/store/store_state.dart';

abstract class StoreRepository {
  Future<StoreState> getAllStores(int pageNo);
}

final storeRepositoryProvider = Provider<StoreRepository>(
  (ref) => StoreRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
