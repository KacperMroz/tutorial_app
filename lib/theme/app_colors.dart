import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFE8EAF6),
    100: Color(0xFFC5CBE9),
    200: Color(0xFF9FA8DA),
    300: Color(0xFF7985CB),
    400: Color(0xFF5C6BC0),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF394AAE),
    700: Color(0xFF3140A5),
    800: Color(0xFF29379D),
    900: Color(0xFF1B278D),
  });
  static const int _primaryPrimaryValue = 0xFF3F51B5;

  static const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFFC6CBFF),
    200: Color(_primaryAccentValue),
    400: Color(0xFF606EFF),
    700: Color(0xFF4757FF),
  });
  static const int _primaryAccentValue = 0xFF939DFF;

  static const Color backgroundColor = Color(0xFFF5F6FA);
  static const Color drawerBackgroundColor = Color(0xFFE7E5E5);
  static const Color appButtonColor = Color(0xFF303B3C);
  static const Color appPrimaryColor = Color(0xFF2A2A72);
  static const Color appRed = Color(0xFFEE5B5B);
  static const Color appGreen = Color(0xFF5EEE5B);
}
