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

class ExpectedEffectService extends DatabaseService{
  final log = getLogger('ExpectedBaheviourService');
  final _storageService = locator<StorageService>();

  late List<ExpectedEffect> _expectedEffect;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var expectedBehaviourString = await rootBundle.loadString('assets/database/expected_effect.json');
    storageService.setStringValue(EXPECTED_EFFECT_KEY, expectedBehaviourString);
    _expectedEffect = (json.decode(expectedBehaviourString) as List).map((tagJson) => ExpectedEffect.fromJson(tagJson)).toList();
  }

  List<ExpectedEffect> getAllEffects(){
    return _expectedEffect;
  }

  @override
  List<String> getListWithNames() {
    return _expectedEffect.map((e) => e.name).toList();
  }

}
