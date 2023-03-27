import 'package:easy_localization/easy_localization.dart';

import 'store_repository.dart';
import '../../values/api_endpoints.dart';
import '../../../shared/utils/extensions.dart';
import '../../../shared/network/api_client.dart';
import '../../../translations/locale_keys.g.dart';
import '../../state/store/store_state.dart';
import '../../model/stores_response/stores_response.dart';

class StoreRepositoryImpl implements StoreRepository {
  final ApiClient _apiClient;

  const StoreRepositoryImpl(this._apiClient);

  Future<StoreState> getAllStores(int pageNo) async {
    final response = await _apiClient.getRequest(
      storeApi,
      query: {"page": pageNo},
      checkStatusCodeOnly: true,
    );

    return response.when(success: (success) {
      final response = StoresResponse.fromJson(success);
      final responseData = response.data;

      if (responseData.isBlank) {
        return StoreState(
          error: LocaleKeys.noDataFound.tr(),
        );
      } else {
        final meta = response.meta;

        return StoreState(
          data: responseData,
          isLastPage: meta?.currentPage == meta?.lastPage,
        );
      }
    }, error: (error) {
      return StoreState(
        error: error,
      );
    });
  }
}
