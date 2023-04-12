import 'package:shared_preferences/shared_preferences.dart';

class SharePreferences {
  static late SharedPreferences _prefs;

  static String _name = "";

  static bool _isDarkMode = false;

  static String _gender = 'Masculino';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }

  static String get gender {
    return _prefs.getString('gender') ?? _gender;
  }

  static set gender(String value) {
    _gender = value;
    _prefs.setString('gender', value);
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }
}
