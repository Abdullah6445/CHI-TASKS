import 'package:flutter/material.dart';

class SharedController extends ChangeNotifier {
  int count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}
