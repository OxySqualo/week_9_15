import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;
  final _keyLogin = 'login';
  final _keyUsername = 'username';
  final _keyUserLastname = 'userlastname';
  final _keyPassword = 'password';
  final _keyEmail = 'email';
  final _keyPhone = 'phone';
  Future init() async => _preferences = await SharedPreferences.getInstance();

  Future setLogin(String login) async {
    await _preferences?.setString(_keyLogin, login);
  }

  Future setUsername(String username) async {
    await _preferences?.setString(_keyUsername, username);
  }

  Future setUserLastname(String userlastname) async {
    await _preferences?.setString(_keyUserLastname, userlastname);
  }

  Future setPassword(String password) async {
    await _preferences?.setString(_keyPassword, password);
  }

  Future setEmail(String email) async {
    await _preferences?.setString(_keyEmail, email);
  }

  Future setPhone(String phone) async {
    await _preferences?.setString(_keyPhone, phone);
  }

  String? getLogin() => _preferences?.getString(_keyLogin);
  String? getUsername() => _preferences?.getString(_keyUsername);
  String? getUserLastname() => _preferences?.getString(_keyUserLastname);
  String? getPassword() => _preferences?.getString(_keyPassword);
  String? getEmail() => _preferences?.getString(_keyEmail);
  String? getPhone() => _preferences?.getString(_keyPhone);

  Future<bool>? deleteLogin() => _preferences?.remove(_keyLogin);
  Future<bool>? deleteUsername() => _preferences?.remove(_keyUsername);
  Future<bool>? deleteUserlastname() => _preferences?.remove(_keyUserLastname);
  Future<bool>? deletePassword() => _preferences?.remove(_keyPassword);
  Future<bool>? deleteEmail() => _preferences?.remove(_keyEmail);
  Future<bool>? deletePhone() => _preferences?.remove(_keyPhone);
}
