import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xffff9191);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(color: primary),

    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primary)
  );

   static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(color: primary),
    scaffoldBackgroundColor: Color(0xff525252)
  );
}
