import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ToolViewModel extends FutureViewModel<List<Tool>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<Tool>> futureToRun() => getDataFromLocalStorage();

  Future<List<Tool>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/tool.json');
    List<Tool> faqObjs = (json.decode(faqString) as List).map((tagJson) => Tool.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(Tool tool){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}