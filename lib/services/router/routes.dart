import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbo_play/views/splash_page/page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'splash_page',
      builder: (BuildContext context, GoRouterState state){
        return const PageSplash();
      }
    ),
  ],
);
