import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade300,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade300,
    titleTextStyle: TextStyle(color: Colors.grey.shade700, fontSize: 24),
    iconTheme: IconThemeData(color: Colors.grey.shade700),
  ),
  colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade100,
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade700,
      inverseSurface: Colors.black),
);
