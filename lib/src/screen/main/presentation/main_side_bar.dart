import 'package:flutter/material.dart';

class MainSideBar extends StatefulWidget {
  const MainSideBar({super.key});

  @override
  State<MainSideBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainSideBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          extended: false,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.favorite),
              label: Text('Favorites'),
            ),
          ],
          selectedIndex: 0,
          onDestinationSelected: (value) {},
        ),
        const Expanded(
          child: Placeholder(),
        ),
      ],
    );
  }
}
