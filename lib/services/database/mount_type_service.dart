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

class MountTypeService extends DatabaseService{
  final log = getLogger('MountTypeService');
  final _storageService = locator<StorageService>();

  late List<MountType> _mountTypeList;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var mountTypeString = await rootBundle.loadString('assets/database/mount_type.json');
    storageService.setStringValue(MOUNT_TYPE_KEY, mountTypeString);
    _mountTypeList = (json.decode(mountTypeString) as List).map((tagJson) => MountType.fromJson(tagJson)).toList();
  }

  List<MountType> getAllMountTypes(){
    return _mountTypeList;
  }

  @override
  List<String> getListWithNames() {
    return _mountTypeList.map((e) => e.name).toList();
  }

}
