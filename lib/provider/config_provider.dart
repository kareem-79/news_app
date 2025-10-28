import 'package:flutter/material.dart';

import '../core/prefs_manager/prefs_manager.dart';

class ConfigProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  bool get isLightEnable => currentTheme == ThemeMode.light;
  Future<void> loadSavedSettings() async {
    currentTheme = PrefsManager.getSavedTheme() ?? ThemeMode.light;
    notifyListeners();
  }
  void changeAppTheme(ThemeMode newTheme)async {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    await PrefsManager.saveTheme(newTheme);
    notifyListeners();
  }
}
