import 'package:flutter/material.dart';

import '../core/prefs_manager/prefs_manager.dart';

class ConfigProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String _currentLanguage = 'en';

  String get currentLanguage => _currentLanguage;
  bool get isEnglish => _currentLanguage == 'en';

  Future<void> loadSavedSettings() async {
    final savedTheme = PrefsManager.getSavedTheme();
    if (savedTheme != null) {
      currentTheme = savedTheme;
    }

    final savedLanguage = PrefsManager.getSavedLanguage();
    if (savedLanguage != null) {
      _currentLanguage = savedLanguage;
    }

    notifyListeners();
  }

  void changeAppTheme(ThemeMode newTheme) async {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    await PrefsManager.saveTheme(newTheme);
    notifyListeners();
  }

  void changeLanguage(String newLanguage) async {
    if (_currentLanguage == newLanguage) return;
    _currentLanguage = newLanguage;
    await PrefsManager.saveLanguage(newLanguage);
    notifyListeners();
  }
}