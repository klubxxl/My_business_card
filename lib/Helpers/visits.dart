import 'package:shared_preferences/shared_preferences.dart';

class Visits {
  static Future<int> getAndSetVisitsCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? value = prefs.getInt("visits");
    if (value != null) {
      value++;
      prefs.setInt("visits", value);
      return value;
    } else {
      prefs.setInt("visits", 1);
      return 1;
    }
  }
}
