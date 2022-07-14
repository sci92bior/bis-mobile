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

class GunsService extends DatabaseService{
  final log = getLogger('GunsService');
  final _storageService = locator<StorageService>();

  late List<Gun> _guns;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var toolString = await rootBundle.loadString('assets/database/gun.json');
    storageService.setStringValue(GUNS_KEY, toolString);
    _guns = (json.decode(toolString) as List).map((tagJson) => Gun.fromJson(tagJson)).toList();
  }

  List<Gun> getAllGuns(){
    return _guns;
  }

  @override
  List<String> getListWithNames() {
    return _guns.map((e) => e.name).toList();
  }

}
