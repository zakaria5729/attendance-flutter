import 'package:flutter/material.dart';

import '../values/app_colors.dart';

class CircularProgressWidget extends StatelessWidget {
  const CircularProgressWidget({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.scale = 1,
    this.alignment = Alignment.center,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  final double scale;
  final Color? color;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return height != null
        ? Padding(
      padding: padding,
      child: Container(
        width: width,
        height: height,
        alignment: alignment,
        child: Transform.scale(
          scale: scale,
          child: CircularProgressIndicator(
            color: colorPrimary,
          ),
        ),
      ),
    )
        : Padding(
      padding: padding,
      child: Transform.scale(
        scale: scale,
        child: Center(
          child: CircularProgressIndicator(
            color: colorPrimary,
          ),
        ),
      ),
    );
  }
}
