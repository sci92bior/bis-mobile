import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BuildMaterialViewModel extends FutureViewModel<List<BuildMaterial>>{

  final _navigationService= locator<NavigationService>();
  final _concreteMaterialService = locator<BuildMaterialService>();

  @override
  Future<List<BuildMaterial>> futureToRun() => getDataFromLocalStorage();

  Future<List<BuildMaterial>> getDataFromLocalStorage() async{
    return Future.value(_concreteMaterialService.getAllBuildMaterials());
  }

  void goToFaqDetail(BuildMaterial concreteMaterial){
    print("Start");
    /*_navigationService.navigateTo(
        Routes.faqDetailsView,
        arguments: FaqDetailsViewArguments(faqEntity: faqEntity));*/
  }
}