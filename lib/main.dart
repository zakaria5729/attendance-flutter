import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/common_widgets/text_widget.dart';
import 'app/my_app.dart';
import 'app/values/app_colors.dart';
import 'app/values/constants.dart';
import 'shared/network/custom_http_override.dart';
import 'shared/utils/provider_logger.dart';
import 'translations/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  HttpOverrides.global = CustomHttpOverrides();

  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    if (!kReleaseMode) {
      return ErrorWidget(errorDetails.exception);
    }

    return TextWidget(
      "Exception: ${errorDetails.exception}",
      color: colorRed,
    );
  };

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader(),
      fallbackLocale: Locale(languageCodeLocales.first),
      supportedLocales: languageCodeLocales.map((e) => Locale(e)).toList(),
      child: ProviderScope(
        child: const MyApp(),
        observers: [
          ProviderLogger(),
        ],
      ),
    ),
  );
}
