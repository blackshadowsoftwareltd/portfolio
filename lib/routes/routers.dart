import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/modules/home/home.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  // initialLocation: '/home',
  // initialLocation: '/settings',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return child;
      },
      routes: [
        GoRoute(
          path: '/',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
          routes: const <RouteBase>[
            // GoRoute(
            //     path: 'fc',
            //     parentNavigatorKey: _shellNavigatorKey,
            //     builder: (BuildContext context, GoRouterState state) {
            //       return const FC();
            //     },
            //     routes: <RouteBase>[]),

            // ? Settings
            // GoRoute(
            //   path: 'settings',
            //   parentNavigatorKey: _shellNavigatorKey,
            //   builder: (BuildContext context, GoRouterState state) {
            //     return const SettingsScreen();
            //   },
            // ),
          ],
        ),
      ],
    ),
  ],
  redirect: (c, state) async {
    // final token = await getValidTokenSilently();

    // if (token == null) {
    //   return '/login';
    // }
    return null;
  },
);
