import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'IBM Plex Sans Arabic',
  primaryColor: const Color(0xFF2B3D16),
  secondaryHeaderColor: const Color(0xFF7C0631),
  disabledColor: const Color(0xFFA0AEC0),
  brightness: Brightness.light,
  hintColor: const Color(0xFF5E6472),
  cardColor: Colors.white,
  shadowColor: Colors.black.withOpacity( 0.03),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: const Color(0xFF0fb3ad))),
  colorScheme: const ColorScheme.light(primary: Color(0xFF0fb3ad), secondary: Color(0xFF0fb3ad)).copyWith(error: const Color(0xFFE84D4F), tertiary: const Color(0xFF334257)),
  popupMenuTheme: const PopupMenuThemeData(color: Colors.white, surfaceTintColor: Colors.white),
  dialogTheme: const DialogTheme(surfaceTintColor: Colors.white),
  floatingActionButtonTheme: FloatingActionButtonThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)), elevation: 5.5),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white, height: 60, padding: EdgeInsets.symmetric(vertical: 5)),
  dividerTheme: const DividerThemeData(thickness: 0.2, color: Color(0xFFA0A4A8)),
  scaffoldBackgroundColor: const Color(0xffFCFCFC),
);