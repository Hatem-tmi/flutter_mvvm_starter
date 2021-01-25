import 'package:flutter/foundation.dart';

class HomePageViewModel extends ChangeNotifier {
  int _counter = 0; // private variable
  int get getCounter => _counter;

  // Increasing the counter
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  // Decreasing the counter
  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
