import 'package:flutter/material.dart';

import '../../shared/utils/util.dart';
import '../values/app_colors.dart';
import '../values/app_font_size.dart';
import 'loading_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final String? font;
  final double? width;
  final Color? textColor;
  final double? fontSize;
  final bool isLoading;
  final bool isHideKeyboardOnTap;
  final EdgeInsets padding;
  final Color borderColor;
  final Color? buttonColor;
  final EdgeInsets stylePadding;
  final String? prefixImageUrl;
  final Icon? prefixIcon;
  final Size? minimumSize;
  final Color? buttonActiveColor;
  final BorderSide? borderSide;
  final double? elevation;
  final double borderRadius;
  final FontWeight? fontWeight;
  final double? prefixIconWidth;
  final VoidCallback? onPressed;

  const ButtonWidget({
    Key? key,
    this.text,
    this.font,
    this.onPressed,
    this.borderSide,
    this.prefixIcon,
    this.buttonColor,
    this.prefixImageUrl,
    this.elevation = 0.8,
    this.borderRadius = 8,
    this.isLoading = false,
    this.prefixIconWidth = 30,
    this.minimumSize = Size.zero,
    this.width = double.infinity,
    this.textColor = colorWhite,
    this.isHideKeyboardOnTap = true,
    this.buttonActiveColor = colorPrimary,
    this.fontWeight = semiBoldFontWeight,
    this.fontSize = fontSize16,
    this.borderColor = colorPrimary,
    this.padding = const EdgeInsets.fromLTRB(20, 20, 20, 20),
    this.stylePadding = const EdgeInsets.symmetric(
      horizontal: 0,
      vertical: 11.5,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textThemeFontFamily =
        Theme.of(context).textTheme.titleLarge?.fontFamily;
    if (isHideKeyboardOnTap && isLoading) {
      closeSoftKeyBoard();
    }

    return Padding(
      key: key,
      padding: padding,
      child: SizedBox(
        width: width,
        child: (prefixImageUrl != null || prefixIcon != null)
            ? ElevatedButton.icon(
                icon: PrefixIconWidget(
                  isLoading: isLoading,
                  prefixIcon: prefixIcon,
                  prefixImageUrl: prefixImageUrl,
                  prefixIconWidth: prefixIconWidth,
                ),
                label: Padding(
                  padding: const EdgeInsets.only(
                    left: 3,
                    right: 5,
                  ),
                  child: isLoading
                      ? LoadingWidget(
                          textColor: buttonActiveColor,
                        )
                      : Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                ),
                onPressed: isLoading ? null : onPressed,
                style: ElevatedButton.styleFrom(
                  disabledForegroundColor: buttonColor,
                  disabledBackgroundColor: buttonColor,
                  elevation: elevation,
                  backgroundColor: buttonActiveColor,
                  foregroundColor: textColor,
                  shape: borderSide != null
                      ? RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            borderRadius,
                          ),
                          side: borderSide!,
                        )
                      : RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            borderRadius,
                          ),
                        ),
                  padding: stylePadding,
                  textStyle: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontFamily: font ?? textThemeFontFamily,
                    fontWeight: isLoading ? regularFontWeight : fontWeight,
                  ),
                ),
              )
            : ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  child: isLoading
                      ? LoadingWidget(
                          textColor: buttonActiveColor,
                        )
                      : Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                ),
                onPressed: isLoading ? null : onPressed,
                style: ElevatedButton.styleFrom(
                  disabledForegroundColor: buttonColor,
                  disabledBackgroundColor: buttonColor,
                  elevation: elevation,
                  backgroundColor: buttonActiveColor,
                  foregroundColor: textColor,
                  minimumSize: minimumSize,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius,
                    ),
                  ),
                  padding: stylePadding,
                  textStyle: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontFamily: font ?? textThemeFontFamily,
                    fontWeight: isLoading ? regularFontWeight : fontWeight,
                  ),
                ),
              ),
      ),
    );
  }
}

class PrefixIconWidget extends StatelessWidget {
  const PrefixIconWidget({
    Key? key,
    this.isLoading = false,
    this.prefixIcon,
    this.prefixIconWidth,
    this.prefixImageUrl,
  }) : super(key: key);

  final bool isLoading;
  final Icon? prefixIcon;
  final String? prefixImageUrl;
  final double? prefixIconWidth;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Icon(
            Icons.circle,
            color: Colors.transparent,
          )
        : prefixIcon != null
            ? prefixIcon!
            : Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: Image.asset(
                  prefixImageUrl!,
                  width: prefixIconWidth,
                ),
              );
  }
}
