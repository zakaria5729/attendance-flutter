import 'package:flutter/material.dart';

import '../values/app_colors.dart';
import '../values/app_font_size.dart';

class TextWidget extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final double opacity;
  final String? font;
  final int? maxLines;
  final bool forceDarkMode;
  final bool isHideKeyboard;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final List<Shadow>? shadows;
  final FontWeight fontWeight;
  final Color? decorationColor;
  final TextOverflow? textOverflow;
  final VoidCallback? onPressed;
  final TextDecoration? textDecoration;

  const TextWidget(
    this.text, {
    Key? key,
    this.font,
    this.shadows,
    this.maxLines,
    this.onPressed,
    this.opacity = 1,
    this.textOverflow,
    this.decorationColor,
    this.color = colorDark,
    this.isHideKeyboard = true,
    this.forceDarkMode = false,
    this.fontSize = fontSize16,
    this.textAlign = TextAlign.center,
    this.fontWeight = regularFontWeight,
    this.padding = const EdgeInsets.fromLTRB(16, 8, 16, 8),
    this.textDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onPressed != null
        ? GestureDetector(
            onTapUp: (details) {
              if (isHideKeyboard) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: _getTextWidget(context),
            onTap: onPressed,
          )
        : _getTextWidget(context);
  }

  Widget _getTextWidget(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text ?? "",
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: textOverflow,
        style: TextStyle(
          fontFamily: font,
          shadows: shadows,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: textDecoration,
          decorationColor: decorationColor,
          color: color?.withOpacity(opacity),
        ),
      ),
    );
  }
}
