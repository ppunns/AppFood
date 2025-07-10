import 'package:flutter/material.dart';
import '../widgets/onboarding_slider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingSlider(),
      ),
    );
  }
}