import 'package:flutter/material.dart';

import '../values/app_colors.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  const RefreshIndicatorWidget({
    Key? key,
    required this.child,
    required this.onRefresh,
  }) : super(key: key);

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: colorPrimary,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
