import 'package:church_info_app/share/service/navigation_service.dart';
import 'package:church_info_app/src/screen/main/presentation/nav_menu.dart';
import 'package:flutter/material.dart';

class MainSideBar extends StatefulWidget {
  const MainSideBar({super.key});

  @override
  State<MainSideBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainSideBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = context.navWatchService.currentIndex;
    return Row(
      children: [
        NavigationRail(
          extended: true,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text(''),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.business),
              label: Text('출첵'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings),
              label: Text('설정'),
            ),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            print('onTap index : $index');
            context.navReadService.selectIndex(index);
          },
        ),
        Expanded(
          child: NavMenu.pages[currentIndex],
        ),
      ],
    );
  }
}
