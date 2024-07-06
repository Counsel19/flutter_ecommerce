import 'package:eccommerce/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:eccommerce/utils/themes/custom_themes/outline_button_theme.dart';
import 'package:eccommerce/utils/themes/custom_themes/text_input_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // The contructor of this is private
  AppTheme._();

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xff03045e),
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlineButtonTheme,
  );
}
