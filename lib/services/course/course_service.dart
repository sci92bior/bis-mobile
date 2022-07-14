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

class CourseService with ReactiveServiceMixin{
  final log = getLogger('CourseService');
  final _storageService = locator<StorageService>();

  final ReactiveValue<List<Course>> _savedCourses = ReactiveValue<List<Course>>(List.empty(growable: true));

  List<Course> get savedCourses => _savedCourses.value;


  CourseService() {
    listenToReactiveValues([_savedCourses]);
  }

  void saveToDatabase(Course explosiveUnit) {
    _savedCourses.value.add(explosiveUnit);
    log.i(_savedCourses);
    _storageService.setStringValue(COURSE_KEY, jsonEncode(_savedCourses.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void deleteFromDatabase(Course explosiveUnit) {
    _savedCourses.value.remove(explosiveUnit);
    log.i(_savedCourses);
    _storageService.setStringValue(COURSE_KEY, jsonEncode(_savedCourses.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void updateInDatabase(Course explosiveUnit) {
    var updatedItemIdx = _savedCourses.value.indexWhere((element) => element.name==explosiveUnit.name);
    _savedCourses.value.removeAt(updatedItemIdx);
    _savedCourses.value.add(explosiveUnit);
    log.i(_savedCourses);
    _storageService.setStringValue(COURSE_KEY, jsonEncode(_savedCourses.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  List<Course> findCoursesByUser(User user) {
   return savedCourses.where((element) => element.participants.contains(user)).toList();
  }


  Future<void> initialise() async {
    var explosiveString = await _storageService.getStringValue(COURSE_KEY);
    if(explosiveString==null){
      _savedCourses.value = List.empty(growable: true);
    }else{
      _savedCourses.value = (json.decode(explosiveString) as List).map((tagJson) => Course.fromJson(tagJson)).toList();
    }
    notifyListeners();
  }



}
