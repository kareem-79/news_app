import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager{
  static late SharedPreferences prefs;
  static const String themeKey = 'Theme';
  static const String light = 'light';
  static const String dark = 'dark';
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<void> saveTheme(ThemeMode themeMode) async {
    String theme = themeMode == ThemeMode.light
        ? light
        : dark;
    await prefs.setString(themeKey, theme);
  }

  static ThemeMode? getSavedTheme() {
    String? savedTheme = prefs.getString(themeKey);
    if (savedTheme != null) {
      if (savedTheme ==light) {
        return ThemeMode.light;
      } else {
        return ThemeMode.dark;
      }
    }
    return null;
  }
}