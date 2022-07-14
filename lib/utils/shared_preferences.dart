import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MySharedPreferences {
  MySharedPreferences._privateConstructor();

  static final MySharedPreferences instance =
  MySharedPreferences._privateConstructor();

  setBooleanValue(String key, bool value) async {
    FlutterSecureStorage myPrefs = FlutterSecureStorage();
    await myPrefs.write(key: key, value: value.toString());
  }

  setStringValue(String key, String value) async {
    FlutterSecureStorage myPrefs = FlutterSecureStorage();
    await myPrefs.write(key: key, value: value);
  }

  setIntValue(String key, int value) async {
    FlutterSecureStorage myPrefs = FlutterSecureStorage();
    await myPrefs.write(key: key, value: value.toString());
  }

  Future<int?> getIntValue(String key) async {
    FlutterSecureStorage myPrefs = FlutterSecureStorage();
    var value =  await myPrefs.read(key: key);
    return int.parse(value!);
  }

  Future<bool> getBooleanValue(String key) async {
    FlutterSecureStorage myPrefs = FlutterSecureStorage();
    var value =  await myPrefs.read(key: key);
    return value=="true" ? true : false;
  }

  Future<String?> getStringValue(String key) async {
    FlutterSecureStorage myPrefs = FlutterSecureStorage();
    var value =  await myPrefs.read(key: key);
    return value;
  }
}