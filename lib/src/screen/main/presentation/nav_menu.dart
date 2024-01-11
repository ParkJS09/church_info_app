import 'package:church_info_app/src/screen/chulcheck/check_screen.dart';
import 'package:church_info_app/src/screen/home/home_screen.dart';
import 'package:church_info_app/src/screen/setting/setting_screen.dart';
import 'package:flutter/material.dart';

abstract class NavMenu {
  static const List<Widget> pages = <Widget>[
    HomeScreen(),
    CheckScreen(),
    SettingScreen(),
  ];
}
