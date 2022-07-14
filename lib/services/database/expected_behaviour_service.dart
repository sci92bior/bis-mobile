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

class ExpectedBehaviourService extends DatabaseService{
  final log = getLogger('ExpectedBaheviourService');
  final _storageService = locator<StorageService>();

  late List<ExpectedBehaviour> _expectedBehaviours;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var expectedBehaviourString = await rootBundle.loadString('assets/database/expected_behaviour.json');
    storageService.setStringValue(EXPECTED_BEHAVIOUR_KEY, expectedBehaviourString);
    _expectedBehaviours = (json.decode(expectedBehaviourString) as List).map((tagJson) => ExpectedBehaviour.fromJson(tagJson)).toList();
  }

  List<ExpectedBehaviour> getAllBehaviours(){
    return _expectedBehaviours;
  }

  @override
  List<String> getListWithNames() {
    return _expectedBehaviours.map((e) => e.name).toList();
  }

}
