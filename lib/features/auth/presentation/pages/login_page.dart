import 'package:flutter/material.dart';
import '../widgets/onboarding_slider.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginFormWidget(),
      ),
    );
  }
}