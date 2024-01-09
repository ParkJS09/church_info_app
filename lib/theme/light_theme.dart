import 'package:church_info_app/theme/foundation/app_theme.dart';
import 'package:church_info_app/theme/res/palette.dart';
import 'package:flutter/material.dart';

class LightTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.light;

  @override
  ColorScheme color = lightColorScheme;
}
