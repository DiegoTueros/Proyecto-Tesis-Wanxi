import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier {
  bool _darkTheme;
  ThemeData _currentTheme;

  bool get darkTheme => this._darkTheme;

  ThemeData get currentTheme => this._currentTheme;

  AppTheme(bool darkTheme) {
    this._darkTheme = darkTheme;
    _currentTheme = darkTheme ? _buildDarkTheme() : _buildLightTheme();
  }

  set darkTheme(bool value) {
    _darkTheme = value;
    _currentTheme = _darkTheme ? _buildDarkTheme() : _buildLightTheme();

    notifyListeners();
  }

  ThemeData _buildLightTheme() => ThemeData.light();

  ThemeData _buildDarkTheme() => ThemeData.dark();
}
