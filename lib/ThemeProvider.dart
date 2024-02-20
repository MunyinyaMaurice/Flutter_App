// ThemeProvider.dart

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeType { light, dark, system }

class ThemeProvider extends ChangeNotifier {
  late SharedPreferences _prefs;
  late ThemeData _themeData;
  late ThemeModeType _themeMode;

  ThemeProvider() {
    _themeMode = ThemeModeType.system;
    _themeData = _getThemeData();
    _loadThemeMode();
  }

  ThemeData get themeData => _themeData;
  ThemeModeType get themeMode => _themeMode;

  ThemeData _getThemeData() {
    if (_themeMode == ThemeModeType.light) {
      return ThemeData.light();
    } else {
      return ThemeData.dark();
    }
  }

  void _loadThemeMode() async {
    _prefs = await SharedPreferences.getInstance();
    final themeModeIndex = _prefs.getInt('themeMode') ?? 2; // Default to system mode
    _setThemeMode(ThemeModeType.values[themeModeIndex]);
  }

  Future<void> _setThemeMode(ThemeModeType mode) async {
    _themeMode = mode;
    await _prefs.setInt('themeMode', mode.index);
    _themeData = _getThemeData();
    notifyListeners();
  }

  void toggleThemeMode() {
    switch (_themeMode) {
      case ThemeModeType.light:
        _setThemeMode(ThemeModeType.dark);
        break;
      case ThemeModeType.dark:
        _setThemeMode(ThemeModeType.light);
        break;
      case ThemeModeType.system:
        // Toggle between light and dark based on system preference
        _setThemeMode(ThemeModeType.system);
        break;
    }
  }
}
