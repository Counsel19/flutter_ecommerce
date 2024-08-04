import 'package:eccommerce/pages/home_screen.dart';
import 'package:eccommerce/pages/login_screen.dart';
import 'package:eccommerce/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return authState.when(
      data: (user) {
        if (user != null) {
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
      error: (error, stack) {
        return Center(
          child: Text("Error $error"),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
