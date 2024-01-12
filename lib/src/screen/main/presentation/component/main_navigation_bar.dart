import 'package:church_info_app/share/service/navigation_service.dart';
import 'package:church_info_app/src/screen/chulcheck/check_screen.dart';
import 'package:church_info_app/src/screen/home/home_screen.dart';
import 'package:church_info_app/src/screen/main/presentation/nav_menu.dart';
import 'package:church_info_app/src/screen/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = context.navWatchService.currentIndex;
    return Scaffold(
      body: NavMenu.pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          print('onTap index : $index');
          context.navReadService.selectIndex(index);
        },
      ),
    );
  }
}
