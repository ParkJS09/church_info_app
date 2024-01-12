import 'package:church_info_app/src/screen/main/presentation/page/chulcheck/check_screen.dart';
import 'package:church_info_app/src/screen/main/presentation/page/home/home_screen.dart';
import 'package:church_info_app/src/screen/main/presentation/page/setting/setting_screen.dart';
import 'package:flutter/material.dart';

abstract class NavMenu {
  static const List<Widget> pages = <Widget>[
    HomeScreen(),
    CheckScreen(),
    SettingScreen(),
  ];

  List<BottomNavigationBarItem> navMenuList = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '홈',
      backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: '출첵',
      backgroundColor: Colors.green,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '설정',
      backgroundColor: Colors.pink,
    ),
  ];

  List<NavigationRailDestination> sideMenuList = const [
    NavigationRailDestination(
      icon: Icon(Icons.home),
      label: Text('홈'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.business),
      label: Text('출첵'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.business),
      label: Text('설정'),
    ),
  ];
}
