import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quicksplit/utils/router/static_app_routes.dart';

import '../../views/pages/home.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: StaticAppRoutes.homePage,
  routes: [
    GoRoute(
        name: StaticAppRoutes.homePage,
        path: StaticAppRoutes.homePage,
        pageBuilder: (context, state) {
          return MaterialPage(child: HomePage());
        })
  ],
);
