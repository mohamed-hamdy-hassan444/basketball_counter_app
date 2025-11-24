import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int countA = 0;
  int countB = 0;
  void addPointsToA(int points) {
    countA += points;
    notifyListeners();
  }

  void addPointsToB(int points) {
    countB += points;
    notifyListeners();
  }

  void reset() {
    countA = 0;
    countB = 0;
    notifyListeners();
  }
}
