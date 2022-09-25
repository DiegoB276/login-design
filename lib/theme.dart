import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  late ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}

//Esto es la clase para poder cambiar el tema de la app.