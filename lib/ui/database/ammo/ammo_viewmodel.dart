import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AmmoViewModel extends FutureViewModel<List<Ammo>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<Ammo>> futureToRun() => getDataFromLocalStorage();

  Future<List<Ammo>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/ammo.json');
    List<Ammo> faqObjs = (json.decode(faqString) as List).map((tagJson) => Ammo.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(Ammo Ammo){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}