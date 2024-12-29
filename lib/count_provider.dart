import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int count = 1;
  increase() {
    count += 1;

    notifyListeners();
  }
}
