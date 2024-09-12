import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int value = 0;

  List<int> valueList = [1, 2, 3, 4, 5];

  increment() {
    int last = valueList.last;
    valueList.add(last + 1);
    notifyListeners();
  }
}
