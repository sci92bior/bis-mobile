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

class ExplosiveMaterialService extends DatabaseService{
  final log = getLogger('ExplosiveMaterialService');
  final _storageService = locator<StorageService>();

  late List<ExplosiveMaterial> _explosiveMaterialsList;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var explosiveMaterialsString = await rootBundle.loadString('assets/database/explosive_material.json');
    storageService.setStringValue(EXPLOSIVE_MATERIAL_KEY, explosiveMaterialsString);
    _explosiveMaterialsList = (json.decode(explosiveMaterialsString) as List).map((tagJson) => ExplosiveMaterial.fromJson(tagJson)).toList();
  }

  List<ExplosiveMaterial> getAllExplosiveMaterials(){
    return _explosiveMaterialsList;
  }

  @override
  List<String> getListWithNames() {
    return _explosiveMaterialsList.map((e) => e.name).toList();
  }

}
