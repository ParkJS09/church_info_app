import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationService with ChangeNotifier {
  int currentIndex = 0;

  void selectIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  int get index => currentIndex;
}

extension NavServiceExt on BuildContext {
  NavigationService get navWatchService => watch<NavigationService>();
  NavigationService get navReadService => read<NavigationService>();
}
