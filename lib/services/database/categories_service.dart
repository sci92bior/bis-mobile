import 'dart:convert';

import 'package:bis/api/backend_client.dart';
import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/constants/app_keys.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/database_service_int.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked/stacked.dart';

class DatabaseCategoriesService extends DatabaseService{
  final log = getLogger('AmmoService');
  final _storageService = locator<StorageService>();

  late List<DatabaseCategory> _databaseCategories;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var backendClient = BackendClient();
    var response = await backendClient.getDatabaseCategories();
    if (response!.statusCode == 200) {
      _databaseCategories = (ApiResponse.fromJson(json.decode(response.body)))
          .content.map((tagJson) => DatabaseCategory.fromJson(tagJson))
          .toList();
      storageService.setStringValue(CATEGORY_KEY, _databaseCategories.toString());
      log.i(_databaseCategories);
    }
    
  }

  List<DatabaseCategory> getAllDatabaseCategories(){
    return _databaseCategories;
  }

  @override
  List<String> getListWithNames() {
    return _databaseCategories.map((e) => e.name).toList();
  }

}
