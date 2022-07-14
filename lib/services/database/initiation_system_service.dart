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

class InitiationSystemService extends DatabaseService{
  final log = getLogger('InitiationSystemService');
  final _storageService = locator<StorageService>();

  late List<InitiationSystem> _initiationSystemList;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var initiationSystemsString = await rootBundle.loadString('assets/database/initation_system.json');
    storageService.setStringValue(INITIATION_SYSTEM_KEY, initiationSystemsString);
    _initiationSystemList = (json.decode(initiationSystemsString) as List).map((tagJson) => InitiationSystem.fromJson(tagJson)).toList();
  }

  List<InitiationSystem> getAllInitiationSystem(){
    return _initiationSystemList;
  }

  @override
  List<String> getListWithNames() {
    return _initiationSystemList.map((e) => e.name).toList();
  }

}
