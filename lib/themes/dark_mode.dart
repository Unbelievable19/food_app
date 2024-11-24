import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),
  //scrollbarTheme: ,
  // dividerColor: const Color.fromARGB(255, 30, 30, 30),
  // dividerTheme: DividerThemeData(color: const Color.fromARGB(255, 250, 250, 250)),
  iconTheme: IconThemeData(color: Colors.grey.shade300),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 20, 20, 20),
    titleTextStyle: TextStyle(color: Colors.grey.shade300, fontSize: 24),
    iconTheme: IconThemeData(color: Colors.grey.shade300),
  ),
  colorScheme: ColorScheme.light(
    background: const Color.fromARGB(255, 20, 20, 20),
    primary: const Color.fromARGB(255, 122, 122, 122),
    secondary: const Color.fromARGB(255, 30, 30, 30),
    tertiary: const Color.fromARGB(255, 47, 47, 47),
    inversePrimary: Colors.grey.shade300,
    inverseSurface: Colors.white,
  ),
);
