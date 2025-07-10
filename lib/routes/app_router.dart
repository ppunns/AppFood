import 'package:flutter/material.dart';
import 'package:food_apps/features/auth/presentation/pages/home_page.dart';

import '../features/auth/presentation/pages/onboarding_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/forget_password_page.dart';
import '../features/auth/presentation/pages/signup_page.dart';

class AppRouter {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String forgetPassword = '/forget-password';
  static const String signup = '/signup';
  static const String home = '/home';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),  
        );
      case forgetPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordPage(),
        );
      case signup:
        return MaterialPageRoute(
          builder: (_) => const SignupPage(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route not found!'),
            ),
          ),
        );
    }
  }
}