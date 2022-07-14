import 'package:bis/app/app.logger.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final log = getLogger('StorageService');
  
  late FlutterSecureStorage instance;

  Future initialise() async {
    log.i('Load storage');
    instance = const FlutterSecureStorage();
    log.v('Storage loaded');
  }

  /// Returns the value associated with the key
  setBooleanValue(String key, bool value) async {
    await instance.write(key: key, value: value.toString());
  }

  clearStorage() async {
    await instance.deleteAll();
  }

  setStringValue(String key, String value) async {
    await instance.write(key: key, value: value);
  }

  setIntValue(String key, int value) async {
    await instance.write(key: key, value: value.toString());
  }

  Future<int?> getIntValue(String key) async {
    var value =  await instance.read(key: key);
    return int.parse(value!);
  }

  Future<bool> getBooleanValue(String key) async {
    var value =  await instance.read(key: key);
    return value =="true" ? true : false;
  }

  Future<String?> getStringValue(String key) async {
    var value =  await instance.read(key: key);
    return value;
  }
}
