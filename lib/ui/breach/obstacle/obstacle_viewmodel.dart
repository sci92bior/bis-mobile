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

class ObstacleViewModel extends ReactiveViewModel with WidgetsBindingObserver{

  final log = getLogger('ObstacleViewModel');
  final _navigationService= locator<NavigationService>();
  final _obstacleService= locator<ObstacleService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_obstacleService];

  List<Obstacle> get obstacles => _obstacleService.savedObstacles;
  List<Obstacle> currentObstacles = List.empty(growable: true);

  void initialise(){
    currentObstacles = obstacles;
  }

  void navigateToNewObstacleForm(){
    _navigationService.navigateTo(Routes.newObstacleView, arguments: NewObstacleViewArguments(isUpdate: false, isRapid: false));
  }

  void navigateToObstacleDetail(Obstacle obstacle){
    _navigationService.navigateTo(Routes.obstacleDetailView, arguments: ObstacleDetailViewArguments(obstacle: obstacle));
  }

  void deleteFromList(int index){
    _obstacleService.deleteFromDatabase(currentObstacles[index]);

  }

  void filterList(String enteredKeyword) {
    List<Obstacle> results = [];
    if (enteredKeyword.isEmpty) {
      results = obstacles;
    } else {
      results = obstacles
          .where((user) =>
          user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    currentObstacles = results;
    notifyListeners();
  }

}