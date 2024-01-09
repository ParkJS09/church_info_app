import 'package:church_info_app/theme/dark_theme.dart';
import 'package:church_info_app/theme/foundation/app_theme.dart';
import 'package:church_info_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeService with ChangeNotifier {
  ThemeService({AppTheme? theme}) : theme = theme ?? LightTheme();
  AppTheme theme;

  void toggleTheme() {
    print('current theme : ${theme.brightness}');
    if (theme.brightness == Brightness.light) {
      theme = DarkTheme();
    } else {
      theme = LightTheme();
    }
    print('theme : $theme');
    notifyListeners();
  }

  ThemeData get themeData {
    return ThemeData(
      /// Scaffold
      scaffoldBackgroundColor: theme.color.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.color.surface,
      ),
      useMaterial3: true
    );
  }
}


extension ThemeServiceExt on BuildContext {
  ThemeService get themeService => watch<ThemeService>();
  AppTheme get theme => themeService.theme;
}