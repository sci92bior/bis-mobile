import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/explosive_unit_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/cupertino.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ExplosiveUnitTabViewModel extends ReactiveViewModel with WidgetsBindingObserver{

  final log = getLogger('ObstacleViewModel');
  final _navigationService= locator<NavigationService>();
  final _storageService= locator<StorageService>();
  final _explosiveUnitService= locator<ExplosiveUnitService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_explosiveUnitService];

  List<ExplosiveUnit> get explosiveUnits => _explosiveUnitService.savedExplosiveUnits;
  List<ExplosiveUnit> currentExplosiveUnits = List.empty(growable: true);

  void initialise(){
    currentExplosiveUnits = explosiveUnits;
  }

  void navigateToNewExplosiveForm(){
    _navigationService.navigateTo(Routes.newExplosiveUnitView, arguments: NewExplosiveUnitViewArguments(isUpdate: false, isRapid: false));
  }

  void navigateToExplosiveUnitDetail(ExplosiveUnit explosiveUnit){
    _navigationService.navigateTo(Routes.explosiveUnitDetailView, arguments: ExplosiveUnitDetailViewArguments(explosiveUnit: explosiveUnit));
  }

  void deleteFromList(int index){
    _explosiveUnitService.deleteFromDatabase(currentExplosiveUnits[index]);

  }

  void filterList(String enteredKeyword) {
    List<ExplosiveUnit> results = [];
    if (enteredKeyword.isEmpty) {
      results = explosiveUnits;
    } else {
      results = explosiveUnits
          .where((user) =>
          user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    currentExplosiveUnits = results;
    notifyListeners();
  }


}