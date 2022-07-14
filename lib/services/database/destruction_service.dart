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

class DestructionService with ReactiveServiceMixin{
  final log = getLogger('DestructionService');
  final _storageService = locator<StorageService>();
  final ReactiveValue<List<Destruction>> _savedDestructions = ReactiveValue<List<Destruction>>(List.empty(growable: true));

  List<Destruction> get savedDestructions=> _savedDestructions.value;


  DestructionService() {
    listenToReactiveValues([_savedDestructions]);
  }

  Destruction findById(int id){
    return savedDestructions.where((element) => element.id==id).first;
  }
  void saveToDatabase(Destruction destruction) {
    _savedDestructions.value.add(destruction);
    log.i(_savedDestructions);
    _storageService.setStringValue(DESTRUCTIONS_KEY, jsonEncode(_savedDestructions.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void deleteFromDatabase(Destruction destructions) {
    _savedDestructions.value.remove(destructions);
    log.i(_savedDestructions);
    _storageService.setStringValue(DESTRUCTIONS_KEY, jsonEncode(_savedDestructions.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void updateInDatabase(Destruction desctruction) {
    var updatedItemIdx = _savedDestructions.value.indexWhere((element) => element.name==desctruction.name);
    _savedDestructions.value.removeAt(updatedItemIdx);
    _savedDestructions.value.add(desctruction);
    print(_savedDestructions.value);
    log.i(_savedDestructions);
    _storageService.setStringValue(DESTRUCTIONS_KEY, jsonEncode(_savedDestructions.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  Future<void> initialise() async {
    var obstacleString = await _storageService.getStringValue(DESTRUCTIONS_KEY);
    if(obstacleString==null){
      _savedDestructions.value = List.empty(growable: true);
    }else{
      _savedDestructions.value = (json.decode(obstacleString) as List).map((tagJson) => Destruction.fromJson(tagJson)).toList();
    }
    notifyListeners();
  }

}
