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

class ObstacleDetailViewModel extends BaseViewModel{

  final log = getLogger('ObstacleDetailViewModel');
  final _navigationService= locator<NavigationService>();
  final _obstacleService= locator<ObstacleService>();

  final obstacleType = TextEditingController();
  final name = TextEditingController();
  final description = TextEditingController();
  final date = TextEditingController();
  final update = TextEditingController();

  bool updateView = false;

  void changeToUpdateView(){
    print(updateView);
    updateView = true;
    notifyListeners();
  }
  void initialise(Obstacle obstacle){
    obstacleType.text = obstacle.obstacleType.name;
    name.text = obstacle.name;
    description.text = obstacle.description;
    date.text = obstacle.created.toString();
    update.text = obstacle.modified.toString();
  }

  void navigateToObstacleEdit(Obstacle obstacle){
    _navigationService.navigateTo(Routes.newObstacleView, arguments: NewObstacleViewArguments(obstacle: obstacle, isUpdate: true, isRapid: false));
  }

  void navigateToObstacleCopy(Obstacle obstacle){
    _navigationService.navigateTo(Routes.newObstacleView, arguments: NewObstacleViewArguments(obstacle: obstacle, isUpdate: false, isRapid: false));
  }


}