import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference _instance = new AppPreference._();
  factory AppPreference() => _instance;
  AppPreference._();

  bool _darkTheme;

  SharedPreferences _prefs;

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _loadData();
  }

  void _loadData() {
    _darkTheme = _prefs.getBool('darkTheme') ?? false;
  }

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    _prefs.setBool('darkTheme', _darkTheme);
  }

  Future<void> clear() async {
    await _prefs.clear();
    _loadData();
  }
}
