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

class AmmoService extends DatabaseService{
  final log = getLogger('AmmoService');
  final _storageService = locator<StorageService>();

  late List<Ammo> _ammos;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var toolString = await rootBundle.loadString('assets/database/ammo.json');
    storageService.setStringValue(AMMO_KEY, toolString);
    _ammos = (json.decode(toolString) as List).map((tagJson) => Ammo.fromJson(tagJson)).toList();
  }

  List<Ammo> getAllAmmos(){
    return _ammos;
  }

  @override
  List<String> getListWithNames() {
    return _ammos.map((e) => e.name).toList();
  }

}
