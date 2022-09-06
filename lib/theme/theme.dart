import 'package:flutter/material.dart';

ThemeMode _themeMode = ThemeMode.system;
ThemeData defaulTheme = ThemeData.light();
ThemeData customThemeMode = ThemeData();
theme() {
  if (defaulTheme == _themeMode) {
    return defaulTheme;
  } else {
    return ThemeData.dark();
  }
}
