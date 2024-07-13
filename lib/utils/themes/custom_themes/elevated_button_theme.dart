import 'package:flutter/material.dart';

// If the elevatedButtonTheme was not a static property, you have  to create an instance of the class before you can aaccess it 
// AppElevatedButtonTheme().elevatedButtonTheme
// AppElevatedButtonTheme.elevatedButtonTheme

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

// Light Mode
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xff03045e),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: const Color(0xFF707070),
      side: const BorderSide(color: Color(0xff03045e)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
