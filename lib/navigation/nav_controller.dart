import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../page/cars/cars_page.dart';
import '../page/home/home_page.dart';
import '../page/page_not_found/page_not_found.dart';
import '../widgets/car_wash_scaffold.dart';
import 'nav_route.dart';

class NavController {
  late final GoRouter _router = GoRouter(debugLogDiagnostics: true, initialLocation: NavRoute.home.path, errorPageBuilder: _pageBuilder, routes: [
    ShellRoute(
      builder: (_, __, child) => CarWashScaffold(body: child),
      routes: [
        GoRoute(
          path: NavRoute.home.path,
          name: NavRoute.home.name,
          pageBuilder: _pageBuilder,
        ),
        GoRoute(
          path: NavRoute.cars.path,
          name: NavRoute.cars.name,
          pageBuilder: _pageBuilder,
        ),
        GoRoute(
          path: NavRoute.pageNotFound.path,
          name: NavRoute.pageNotFound.name,
          pageBuilder: _pageBuilder,
        ),
      ],
    ),
  ]);

  GoRouter get router => _router;

  Page<void> _pageBuilder(BuildContext context, GoRouterState state) => NoTransitionPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: _getPageByName(state.name ?? NavRoute.pageNotFound.name, state),
      );

  Widget _getPageByName(String pageName, GoRouterState state) {
    var navRoute = NavRoute.values.byName(pageName);
    switch (navRoute) {
      case NavRoute.home:
        return const HomePage();
      case NavRoute.cars:
        return const CarsPage();
      //todo - check how can we navigate with extra parameters
      /* case NavRoute.jobcardmainpage:
        final args = state.uri.queryParameters;
        return JobCardMainPage(args: args, layover: state.extra as Layover?);*/
      default:
        return const PageNotFound();
    }
  }
}
