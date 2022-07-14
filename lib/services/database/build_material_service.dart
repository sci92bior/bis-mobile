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

class BuildMaterialService extends DatabaseService{
  final log = getLogger('BuildMaterialService');
  final _storageService = locator<StorageService>();

  late List<BuildMaterial> _buildMaterialsList;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var concreteMaterialsString = await rootBundle.loadString('assets/database/build_material.json');
    storageService.setStringValue(CONCRETE_MATERIAL_KEY, concreteMaterialsString);
    _buildMaterialsList = (json.decode(concreteMaterialsString) as List).map((tagJson) => BuildMaterial.fromJson(tagJson)).toList();
  }

  List<BuildMaterial> getAllBuildMaterials(){
    return _buildMaterialsList;
  }

  @override
  List<String> getListWithNames() {
    return _buildMaterialsList.map((e) => e.name).toList();
  }

}
