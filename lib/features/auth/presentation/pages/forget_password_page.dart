import 'package:flutter/material.dart';
import '../widgets/forget_password.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ForgetPassword(),
      ),
    );
  }
}