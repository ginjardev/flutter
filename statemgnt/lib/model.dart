import 'package:flutter/cupertino.dart';

class Model with ChangeNotifier {
  String text = "hi";
  void changeText() {
    text = "hello";
    notifyListeners();
  }
}
