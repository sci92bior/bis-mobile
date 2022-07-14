import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ExpectedBehaviourViewModel extends FutureViewModel<List<ExpectedBehaviour>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<ExpectedBehaviour>> futureToRun() => getDataFromLocalStorage();

  Future<List<ExpectedBehaviour>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/expected_behaviour.json');
    List<ExpectedBehaviour> faqObjs = (json.decode(faqString) as List).map((tagJson) => ExpectedBehaviour.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(ExpectedBehaviour initiationSystem){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}