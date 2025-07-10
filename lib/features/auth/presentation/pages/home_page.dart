import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_apps/features/auth/presentation/cubit/login_cubit.dart';
import '../widgets/onboarding_slider.dart';
import '../widgets/login_form.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Selamat Datang di home!',textAlign: TextAlign.center,),
      ),
    );
  }
}

