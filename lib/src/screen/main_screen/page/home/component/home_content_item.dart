import 'package:church_info_app/theme/res/layout.dart';
import 'package:flutter/material.dart';

class HomeContentItem extends StatelessWidget {
  const HomeContentItem({
    super.key,
    required this.isList,
    required this.title,
    // required this.content,
  });

  final bool isList;
  final String title;
  // final Widget content;

  @override
  Widget build(BuildContext context) {
    return isList ? getListItem(context) : getGridItem();
  }

  Widget getListItem(BuildContext context) {
    return ExpansionTile(
      title: Text('타일 제목'),
      children: <Widget>[
        ListTile(
          title: Text('내부 항목 1'),
        ),
        ListTile(
          title: Text('내부 항목 2'),
        ),
        // 추가 항목들...
      ],
    );
  }

  Widget getGridItem() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14.0,
        horizontal: 18.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: Colors.teal[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28.0,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(
                  14.0,
                ),
              ),
              child: Center(
                child: Text(
                  '여기는 Content',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
