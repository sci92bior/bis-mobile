import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ExplosiveMaterialViewModel extends FutureViewModel<List<ExplosiveMaterial>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<ExplosiveMaterial>> futureToRun() => getDataFromLocalStorage();

  Future<List<ExplosiveMaterial>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/explosive_material.json');
    List<ExplosiveMaterial> faqObjs = (json.decode(faqString) as List).map((tagJson) => ExplosiveMaterial.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(ExplosiveMaterial explosiveMaterial){
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}