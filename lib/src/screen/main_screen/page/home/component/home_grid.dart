import 'package:church_info_app/src/screen/main_screen/page/home/component/home_content_item.dart';
import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
        HomeContentItem(isList: false, title: '타이틀 영역'),
      ],
    );
  }
}
