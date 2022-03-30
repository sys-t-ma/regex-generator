import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  bool darkTheme;

  AppProvider({this.darkTheme = false});

  changeTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }
}
