import 'package:church_info_app/share/service/navigation_service.dart';
import 'package:church_info_app/theme/res/layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationService(),
      child: context.layout(
        const MainSideBar(),
        mobile: const MainNavigationBar(),
      ),
    );
  }
}