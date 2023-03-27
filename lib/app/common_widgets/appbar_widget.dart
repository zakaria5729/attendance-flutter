import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/utils/extensions.dart';
import '../../gen/assets.gen.dart';
import '../../shared/utils/util.dart';
import '../values/app_font_size.dart';
import '../values/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    this.shape,
    this.title,
    this.bottom,
    this.titleColor,
    this.titleWidget,
    this.height = 56,
    this.titleSpacing,
    this.actionWidgets,
    this.leadingWidget,
    this.flexibleSpace,
    this.backgroundColor,
    this.navBackIconColor,
    this.elevation = 0.18,
    this.isCenterTitle = true,
    this.navBackIconClickCallBack,
    this.isShowNavBackIcon = true,
    this.removeDefaultPadding = false,
  }) : super(key: key);

  final String? title;
  final double height;
  final double elevation;
  final Color? titleColor;
  final ShapeBorder? shape;
  final bool isCenterTitle;
  final Widget? titleWidget;
  final double? titleSpacing;
  final Widget? flexibleSpace;
  final Widget? leadingWidget;
  final Color? backgroundColor;
  final Color? navBackIconColor;
  final bool isShowNavBackIcon;
  final bool removeDefaultPadding;
  final List<Widget>? actionWidgets;
  final PreferredSizeWidget? bottom;
  final Function(bool isClcked)? navBackIconClickCallBack;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final locale = context.locale.languageCode;

    return AppBar(
      key: key,
      shape: shape,
      bottom: bottom,
      elevation: elevation,
      centerTitle: isCenterTitle,
      titleSpacing: titleSpacing,
      flexibleSpace: flexibleSpace,
      iconTheme: themeData.iconTheme,
      toolbarHeight: preferredSize.height,
      automaticallyImplyLeading: isShowNavBackIcon,
      title: titleWidget ??
          Padding(
            padding: const EdgeInsets.only(
              top: 3.5,
            ),
            child: Text(
              title ?? "",
              style: TextStyle(
                fontSize: fontSize20,
                fontWeight: semiBoldFontWeight,
                color: titleColor ?? themeData.appBarTheme.foregroundColor,
              ),
            ),
          ),
      backgroundColor: backgroundColor ?? themeData.appBarTheme.backgroundColor,
      leading: isShowNavBackIcon
          ? IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: RotatedBox(
                  quarterTurns: locale == languageCodeLocales[2] ? 2 : 0,
                  child: Assets.icons.backArrowIcon.image(
                    width: 16,
                    height: 16,
                    color: navBackIconColor ?? themeData.iconTheme.color,
                  ),
                ),
              ),
              alignment: Alignment.centerLeft,
              onPressed: () {
                closeSoftKeyBoard();
                context.hideSnackBar();

                if (navBackIconClickCallBack != null) {
                  navBackIconClickCallBack!(true);
                } else {
                  if (Navigator.canPop(context)) {
                    context.pop();
                  }
                }
              },
            )
          : null,
      actions: [
        if (actionWidgets != null && actionWidgets!.isNotEmpty) ...[
          ...actionWidgets!,
        ],
      ],
    );
  }
}
