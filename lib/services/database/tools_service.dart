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

class ToolsService extends DatabaseService{
  final log = getLogger('ToolsService');
  final _storageService = locator<StorageService>();

  late List<Tool> _tools;


  @override
  void synchroniseWithExternalDatabase() async{
  }

  @override
  Future<void>  initialise() async {
    var toolString = await rootBundle.loadString('assets/database/tool.json');
    storageService.setStringValue(TOOLS_KEY, toolString);
    _tools = (json.decode(toolString) as List).map((tagJson) => Tool.fromJson(tagJson)).toList();
  }

  List<Tool> getAllTools(){
    return _tools;
  }

  @override
  List<String> getListWithNames() {
    return _tools.map((e) => e.name).toList();
  }

}
