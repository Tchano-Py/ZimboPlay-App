import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbo_play/views/login_page/page.dart';
import 'package:zimbo_play/views/splash_page/page.dart';

CustomTransitionPage myPageTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'splash_page',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          myPageTransition<void>(
        context: context,
        state: state,
        child: const PageSplash(),
      ),
    ),
    GoRoute(
      path: '/login',
      name: 'login_page',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          myPageTransition<void>(
        context: context,
        state: state,
        child: const PageLogin(),
      ),
    ),
  ],
);
