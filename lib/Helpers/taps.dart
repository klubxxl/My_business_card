import 'package:shared_preferences/shared_preferences.dart';

class Taps {
  static Future<int> getVisitCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? value = prefs.getInt("taps");

    return value ?? 0;
  }

  static Future<void> setVisitCount(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("taps", value);
  }
}
