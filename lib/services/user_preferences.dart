import 'dart:convert';
import 'package:focad/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static const _keyUser = 'jwt';

  static Future<User> read() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_keyUser);
    User user = User.fromJson(jsonDecode(json!));
    // print("User $user");
    return user;
  }

  static save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  static remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  static Future<bool> getAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool authJWT = prefs.getBool("authJWT") ?? false;
    // print('authJWT $authJWT');
    return authJWT;
  }

  static setAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("authJWT", true);
  }
}
