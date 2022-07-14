import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/constants/app_keys.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/database_service_int.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked/stacked.dart';

class UserService {
  final log = getLogger('UserService');
  final _storageService = locator<StorageService>();
  late List<User> _users;

  String _username = "Patryk Łaski";

  String getUsername(){
    return _username;
  }

  Future<void> initialise() async {
    var usersString = await rootBundle.loadString('assets/database/users.json');
    _storageService.setStringValue(USERS_KEY, usersString);
    _users = (json.decode(usersString) as List).map((tagJson) => User.fromJson(tagJson)).toList();
  }

  List<User> getAllStudents(){
    return _users.where((element) => !element.isInstructor).toList();
  }

  List<User> getInstructors(){
    return _users.where((element) => element.isInstructor).toList();
  }

  Future<void> setUsername() async {
    _username = "Patryk Łaski";
    await _storageService.setStringValue(USERNAME_KEY, "Patryk Łaski");

  }

}
