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

class ObstacleService with ReactiveServiceMixin{
  final log = getLogger('ObstacleService');
  final _storageService = locator<StorageService>();
  final ReactiveValue<List<Obstacle>> _savedObstacles = ReactiveValue<List<Obstacle>>(List.empty(growable: true));

  List<Obstacle> get savedObstacles => _savedObstacles.value;


  ObstacleService() {
    listenToReactiveValues([_savedObstacles]);
  }

  void saveToDatabase(Obstacle obstacle) {
    _savedObstacles.value.add(obstacle);
    log.i(_savedObstacles);
    _storageService.setStringValue(OBSTALCE_KEY, jsonEncode(_savedObstacles.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void deleteFromDatabase(Obstacle obstacle) {
    _savedObstacles.value.remove(obstacle);
    log.i(_savedObstacles);
    _storageService.setStringValue(OBSTALCE_KEY, jsonEncode(_savedObstacles.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void updateInDatabase(Obstacle obstacle) {
    var updatedItemIdx = _savedObstacles.value.indexWhere((element) => element.name==obstacle.name);
    _savedObstacles.value.removeAt(updatedItemIdx);
    _savedObstacles.value.add(obstacle);
    print(_savedObstacles.value);
    log.i(_savedObstacles);
    _storageService.setStringValue(OBSTALCE_KEY, jsonEncode(_savedObstacles.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  Future<void> initialise() async {
    var obstacleString = await _storageService.getStringValue(OBSTALCE_KEY);
    if(obstacleString==null){
      _savedObstacles.value = List.empty(growable: true);
    }else{
      _savedObstacles.value = (json.decode(obstacleString) as List).map((tagJson) => Obstacle.fromJson(tagJson)).toList();
    }
    notifyListeners();
  }

}
