import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Placeholder();
      },
    );
  }
}
