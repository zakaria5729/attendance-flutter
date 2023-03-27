import 'package:attendance/shared/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_paths.dart';

final router = GoRouter(
  routes: [
    _setRoute(
      routeInitial,
      const StoreView(),
    ),
    _setRoute(
      routeAttendance,
      const AttendanceView(),
    ),
);

GoRoute _setRoute(String path, Widget targetWidget) {
  return GoRoute(
    path: path,
    pageBuilder: (context, state) {
      context.hideSnackBar();

      return CustomTransitionPage(
        key: state.pageKey,
        child: targetWidget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      );
    },
  );
}

CustomTransitionPage _getRouteWidget(
  BuildContext context,
  GoRouterState state,
  Widget targetWidget,
) {
  context.hideSnackBar();

  return CustomTransitionPage(
    key: state.pageKey,
    child: targetWidget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
