import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quicksplit/utils/router/static_app_routes.dart';

import '../../views/pages/budget_splitting_input_page.dart';
import '../../views/pages/choose_participants_screen.dart';
import '../../views/pages/home.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');


Widget slideTransitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
    ) {
  const begin = Offset(1.0, 0.0);
  const end = Offset.zero;
  const curve = Curves.easeInOut;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);

  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
}

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: StaticAppRoutes.homePage,
  routes: [
    GoRoute(
      name: StaticAppRoutes.homePage,
      path: StaticAppRoutes.homePage,
      pageBuilder: (context, state) {
        return MaterialPage(child: HomePage());
      },),
    GoRoute(
      name: StaticAppRoutes.budgetSplittingInputPage,
      path: StaticAppRoutes.budgetSplittingInputPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: BudgetSplittingInputPage(),
          transitionsBuilder: slideTransitionBuilder
        );
      },),
    GoRoute(
      name: StaticAppRoutes.chooseParticipantsScreen,
      path: StaticAppRoutes.chooseParticipantsScreen,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: ChooseParticipantsScreen(),
          transitionsBuilder: slideTransitionBuilder
        );
      },),
  ],
);
