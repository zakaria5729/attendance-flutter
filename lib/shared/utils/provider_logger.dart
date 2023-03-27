import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    if (newValue is StateController<int>) {
      if (!kReleaseMode) {
        log('[${provider.name ?? provider.runtimeType}] value: ${newValue.state}');
      }
    }
  }
}
