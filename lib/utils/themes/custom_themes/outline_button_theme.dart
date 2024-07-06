import 'package:flutter/material.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final outlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    side: const BorderSide(
      color: Color(0xff03045e),
    ),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}
