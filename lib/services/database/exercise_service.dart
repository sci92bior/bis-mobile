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

class ExerciseService with ReactiveServiceMixin{
  final log = getLogger('ExerciseService');
  final _storageService = locator<StorageService>();
  final ReactiveValue<List<Exercise>> _savedExercises = ReactiveValue<List<Exercise>>(List.empty(growable: true));

  List<Exercise> get savedExercises=> _savedExercises.value;


  ExerciseService() {
    listenToReactiveValues([_savedExercises]);
  }

  void saveToDatabase(Exercise exercise) {
    _savedExercises.value.add(exercise);
    log.i(_savedExercises);
    _storageService.setStringValue(EXERCISES_KEY, jsonEncode(_savedExercises.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void deleteFromDatabase(Exercise exercises) {
    _savedExercises.value.remove(exercises);
    log.i(_savedExercises);
    _storageService.setStringValue(EXERCISES_KEY, jsonEncode(_savedExercises.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void updateInDatabase(Exercise desctruction) {
    var updatedItemIdx = _savedExercises.value.indexWhere((element) => element.name==desctruction.name);
    _savedExercises.value.removeAt(updatedItemIdx);
    _savedExercises.value.add(desctruction);
    print(_savedExercises.value);
    log.i(_savedExercises);
    _storageService.setStringValue(EXERCISES_KEY, jsonEncode(_savedExercises.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  Future<void> initialise() async {
    var obstacleString = await _storageService.getStringValue(EXERCISES_KEY);
    if(obstacleString==null){
      _savedExercises.value = List.empty(growable: true);
    }else{
      _savedExercises.value = (json.decode(obstacleString) as List).map((tagJson) => Exercise.fromJson(tagJson)).toList();
    }
    notifyListeners();
  }

}
