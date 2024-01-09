import 'package:church_info_app/theme/dark_theme.dart';
import 'package:church_info_app/theme/foundation/app_theme.dart';
import 'package:church_info_app/theme/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeService with ChangeNotifier {
  ThemeService({AppTheme? theme}) : theme = theme ?? LightTheme();
  AppTheme theme;

  void toggleTheme() {
    if (theme.brightness == Brightness.light) {
      theme = LightTheme();
    } else {
      theme = DarkTheme();
    }
    notifyListeners();
  }
}