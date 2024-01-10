import 'package:church_info_app/share/service/theme_service.dart';
import 'package:church_info_app/src/screen/main/navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestAppBar'),
      ),
      body: MainNavigationBar(),
    );
  }
}
