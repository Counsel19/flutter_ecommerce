import 'package:eccommerce/pages/home_screen.dart';
import 'package:eccommerce/pages/login_screen.dart';
import 'package:eccommerce/pages/onbaord_screen.dart';
import 'package:eccommerce/pages/signup_screen.dart';
import 'package:eccommerce/utils/themes/theme.dart';
import 'package:eccommerce/widgets/shared/auth_checker.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Ecommerce",
      theme: AppTheme.theme,

      // home: const OnboardScreen(),
      home: const AuthChecker(),
      routes: {
        "/login": (context) => const LoginScreen(),
        "/sign-up": (context) => const SignupScreen(),
      },
    );
  }
}

// To Do 
// 1. Themes 
// 2. Onbaording Page
// Login
// Register
// Homepage
