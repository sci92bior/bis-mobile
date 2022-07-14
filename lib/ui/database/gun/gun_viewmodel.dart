import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GunViewModel extends FutureViewModel<List<Gun>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<Gun>> futureToRun() => getDataFromLocalStorage();

  Future<List<Gun>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/gun.json');
    List<Gun> faqObjs = (json.decode(faqString) as List).map((tagJson) => Gun.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(Gun Gun){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}