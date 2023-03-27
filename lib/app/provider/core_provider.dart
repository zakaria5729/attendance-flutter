import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/network/api_client.dart';

final connectivityProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});


final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(
    ref.read,
    ref.watch(connectivityProvider),
  );
});