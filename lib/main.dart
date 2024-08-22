import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zimbo_play/services/router/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Zimbo Play App.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(196, 144, 33, 1),
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
