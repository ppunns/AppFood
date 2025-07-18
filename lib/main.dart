import 'package:flutter/material.dart';
import 'routes/app_router.dart';
import 'config/theme/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: AppTheme.lightTheme,
      initialRoute: AppRouter.onboarding,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
