import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bordered_text_widget.dart';
import 'text_widget.dart';
import 'appbar_widget.dart';
import '../values/app_colors.dart';
import '../../app/values/size_config.dart';
import '../../translations/locale_keys.g.dart';
import '../../shared/network/app_exception.dart';

class ErrorRetryWidget extends StatelessWidget {
  ErrorRetryWidget(
    this.error, {
    Key? key,
    this.onPressed,
    this.errorColor,
    this.divider = 1,
    this.appBarWidget,
    this.maxLines = 2,
    this.retryButtonText,
    this.isFullScreen = true,
    this.checkLoginState = false,
    this.isRemoveSizeBox = false,
  }) : super(key: key);

  final int maxLines;
  final Object error;
  final double divider;
  final Color? errorColor;
  final bool isFullScreen;
  final bool isRemoveSizeBox;
  final bool checkLoginState;
  final String? retryButtonText;
  final VoidCallback? onPressed;
  final AppBarWidget? appBarWidget;

  @override
  Widget build(BuildContext context) {
    return appBarWidget != null
        ? Scaffold(
            appBar: appBarWidget,
            body: _ErrorRetryWidgetChild(
              _getActualError,
              key: key,
              divider: divider,
              maxLines: maxLines,
              onPressed: onPressed,
              errorColor: errorColor,
              isFullScreen: isFullScreen,
              retryButtonText: retryButtonText,
              checkLoginState: checkLoginState,
            ),
          )
        : _ErrorRetryWidgetChild(
            _getActualError,
            key: key,
            divider: divider,
            maxLines: maxLines,
            onPressed: onPressed,
            errorColor: errorColor,
            isFullScreen: isFullScreen,
            retryButtonText: retryButtonText,
            checkLoginState: checkLoginState,
          );
  }

  String get _getActualError {
    if (error is AppException) {
      return (error as AppException).error.toString();
    }

    return error.toString();
  }
}

class _ErrorRetryWidgetChild extends ConsumerWidget {
  const _ErrorRetryWidgetChild(
    this.error, {
    Key? key,
    this.onPressed,
    this.divider = 1,
    this.maxLines = 2,
    this.retryButtonText,
    this.isFullScreen = true,
    this.errorColor = colorRed,
    this.checkLoginState = false,
  }) : super(key: key);

  final int maxLines;
  final String error;
  final double divider;
  final Color? errorColor;
  final bool isFullScreen;
  final bool checkLoginState;
  final String? retryButtonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      key: key,
      width: SizeConfig.getScreenWidth(context),
      height:
          isFullScreen ? SizeConfig.getScreenHeight(context) / divider : null,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              error,
              color: errorColor,
              maxLines: maxLines,
              textOverflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5,
            ),
            if (onPressed != null) ...[
              GestureDetector(
                onTap: onPressed,
                child: BorderedTextWidget(
                  retryButtonText ?? LocaleKeys.tryAgain.tr(),
                  fontSize: 16,
                  color: colorPrimary,
                  backgroundColor: colorWhite,
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                ),
              )
            ],
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
