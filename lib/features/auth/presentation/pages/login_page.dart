import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_apps/features/auth/presentation/cubit/login_cubit.dart';
import '../../datasources/auth_remote_data_source.dart';
import '../../domain/repository/auth_repository_impl.dart';
import '../../domain/usecase/login_usecase.dart';
import '../widgets/onboarding_slider.dart';
import '../widgets/login_form.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(
        LoginUseCase(
          AuthRepositoryImlp(
            remoteDataSource: AuthRemoteDataSourceImpl(
              client: http.Client(),
            ),
          ),
        ),
      ),
      child: const LoginFormWidget(),
    );
  }
}

