import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/notifications_service.dart';
import 'package:flutter_final_project/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/auth/auth_state.dart';
import 'package:flutter_final_project/presentation/screens/auth_screen.dart';
import 'package:flutter_final_project/presentation/screens/home_screen.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state.status == AuthStatus.initial) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (state.status == AuthStatus.authenticated) {
          NotificationsService.instance.initialize(context);
          return const HomeScreen();
        }
        return const AuthScreen();
      },
    );
  }
}
