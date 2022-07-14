import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/cupertino.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ExplosiveUnitDetailViewModel extends BaseViewModel{

  final log = getLogger('ExplosiveUnitViewModel');
  final _navigationService= locator<NavigationService>();
  final _obstacleService= locator<ObstacleService>();

  final explosiveUnitType = TextEditingController();
  final name = TextEditingController();
  final description = TextEditingController();
  final date = TextEditingController();
  final update = TextEditingController();
  final madeTime = TextEditingController();

  bool updateView = false;

  void changeToUpdateView(){
    print(updateView);
    updateView = true;
    notifyListeners();
  }
  void initialise(ExplosiveUnit explosiveUnit){
    explosiveUnitType.text = explosiveUnit.explosiveUnitType.name;
    name.text = explosiveUnit.name;
    description.text = explosiveUnit.description;
    date.text = explosiveUnit.created.toString();
    update.text = explosiveUnit.modified.toString();
    madeTime.text = explosiveUnit.madeTime.toString();
  }

  void navigateToExplosiveUnitEdit(ExplosiveUnit explosiveUnit){
    _navigationService.navigateTo(Routes.newExplosiveUnitView, arguments: NewExplosiveUnitViewArguments(explosiveUnit: explosiveUnit, isUpdate: true, isRapid: false));
  }

  void navigateToRapidExplosiveUnitAdd(){
    _navigationService.navigateTo(Routes.newExplosiveUnitView, arguments: NewExplosiveUnitViewArguments(isUpdate: true, isRapid: true));
  }

  void navigateToExplosiveUnitCopy(ExplosiveUnit explosiveUnit){
    _navigationService.navigateTo(Routes.newExplosiveUnitView, arguments: NewExplosiveUnitViewArguments(explosiveUnit: explosiveUnit, isUpdate: false, isRapid: false));
  }


}