import 'package:church_info_app/src/screen/main_screen/page/home/component/home_grid.dart';
import 'package:church_info_app/src/screen/main_screen/page/home/component/home_list.dart';
import 'package:church_info_app/theme/res/layout.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return context.layout(
      HomeGrid(isList: false),
      mobile: HomeList(),
    );
  }
}
