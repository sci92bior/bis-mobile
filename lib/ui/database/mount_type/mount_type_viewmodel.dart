import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MountTypeViewModel extends FutureViewModel<List<MountType>>{

  final _navigationService= locator<NavigationService>();

  @override
  Future<List<MountType>> futureToRun() => getDataFromLocalStorage();

  Future<List<MountType>> getDataFromLocalStorage() async{
    var faqString = await rootBundle.loadString('assets/database/mount_type.json');
    List<MountType> faqObjs = (json.decode(faqString) as List).map((tagJson) => MountType.fromJson(tagJson)).toList();
    return Future.value(faqObjs);
  }

  void goToFaqDetail(MountType initiationSystem){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}