import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../translations/locale_keys.g.dart';
import '../routes/route_paths.dart';
import '../values/app_colors.dart';
import 'appbar_widget.dart';
import 'text_widget.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({
    Key? key,
    this.error,
    this.fromNoDataError = true,
  }) : super(key: key);

  final String? error;
  final bool fromNoDataError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fromNoDataError
          ? null
          : AppBarWidget(
              title: LocaleKeys.pageNotFound.tr(),
              leadingWidget: GestureDetector(
                onTap: () {
                  context.go(routeInitial);
                },
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: colorPrimary,
                  ),
                ),
              ),
            ),
      body: Center(
        child: TextWidget(
          error != null
              ? error!
              : fromNoDataError
                  ? LocaleKeys.noDataFound.tr()
                  : LocaleKeys.pageNotFound.tr(),
        ),
      ),
    );
  }
}
