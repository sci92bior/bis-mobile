import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InitiationSystemViewModel extends FutureViewModel<List<InitiationSystem>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<InitiationSystem>> futureToRun() => getDataFromLocalStorage();

  Future<List<InitiationSystem>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/initation_system.json');
    List<InitiationSystem> faqObjs = (json.decode(faqString) as List).map((tagJson) => InitiationSystem.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(InitiationSystem initiationSystem){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}