import 'package:church_info_app/src/screen/main_screen/page/home/component/home_content_item.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return HomeContentItem(isList: true, title: '타이틀 영역');
      },
    );
  }
}
