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

class ExplosiveUnitService with ReactiveServiceMixin{
  final log = getLogger('ExplosiveUnitService');
  final _storageService = locator<StorageService>();
  final ReactiveValue<List<ExplosiveUnit>> _savedExplosiveUnits = ReactiveValue<List<ExplosiveUnit>>(List.empty(growable: true));

  List<ExplosiveUnit> get savedExplosiveUnits => _savedExplosiveUnits.value;


  ExplosiveUnitService() {
    listenToReactiveValues([_savedExplosiveUnits]);
  }

  void saveToDatabase(ExplosiveUnit explosiveUnit) {
    _savedExplosiveUnits.value.add(explosiveUnit);
    log.i(_savedExplosiveUnits);
    _storageService.setStringValue(EXPLOSIVE_UNIT_KEY, jsonEncode(_savedExplosiveUnits.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void deleteFromDatabase(ExplosiveUnit explosiveUnit) {
    _savedExplosiveUnits.value.remove(explosiveUnit);
    log.i(_savedExplosiveUnits);
    _storageService.setStringValue(EXPLOSIVE_UNIT_KEY, jsonEncode(_savedExplosiveUnits.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  void updateInDatabase(ExplosiveUnit explosiveUnit) {
    var updatedItemIdx = _savedExplosiveUnits.value.indexWhere((element) => element.name==explosiveUnit.name);
    _savedExplosiveUnits.value.removeAt(updatedItemIdx);
    _savedExplosiveUnits.value.add(explosiveUnit);
    print(_savedExplosiveUnits.value);
    log.i(_savedExplosiveUnits);
    _storageService.setStringValue(EXPLOSIVE_UNIT_KEY, jsonEncode(_savedExplosiveUnits.value.map((e) => e.toJson()).toList()));
    notifyListeners();
  }

  Future<void> initialise() async {
    var explosiveString = await _storageService.getStringValue(EXPLOSIVE_UNIT_KEY);
    if(explosiveString==null){
      _savedExplosiveUnits.value = List.empty(growable: true);
    }else{
      _savedExplosiveUnits.value = (json.decode(explosiveString) as List).map((tagJson) => ExplosiveUnit.fromJson(tagJson)).toList();
    }
    notifyListeners();
  }

}
