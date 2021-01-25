import 'package:flutter/foundation.dart';

class RecapPageViewModel extends ChangeNotifier {
  int count;

  RecapPageViewModel(int count) {
    this.count = count;
  }
}
