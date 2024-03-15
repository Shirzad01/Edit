import 'package:flutter/material.dart';


class MyProvider extends ChangeNotifier{
  bool _darkLight = true;
  bool get darkLight => _darkLight;

  void changeTheme(){
    _darkLight = !_darkLight;
    notifyListeners();

  }
}