import 'dart:math';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/generated/l10n.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/ammo_service.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/exercise_service.dart';
import 'package:bis/services/database/explosive_material_service.dart';
import 'package:bis/services/database/explosive_unit_service.dart';
import 'package:bis/services/database/initiation_system_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/media_service.dart';
import 'package:bis/services/third_party/setup_snackbar_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CalculateRangeViewModel extends FormViewModel{

  final log = getLogger('NewExerciseViewModel');
  final _navigationService = locator<NavigationService>();
  final _localizationService = locator<I10n>();
  final _explosiveUnitService = locator<ExplosiveUnitService>();
  final _ammoService = locator<AmmoService>();
  final _explosiveMaterialService = locator<ExplosiveMaterialService>();
  final _initiationSystemUnit = locator<InitiationSystemService>();
  final _exerciseService = locator<ExerciseService>();

  final _snackbarService = locator<SnackbarService>();

  final startDateController = TextEditingController();
  final stopDateController = TextEditingController();
  DateTime? start;
  DateTime? stop;

  final List<ExplosiveUnitCount> explosiveUnitCountList = List.empty(growable: true);
  final List<AmmoCount> ammoCountList = List.empty(growable: true);
  final List<InitiationSystemCount> initiationSystemCountList = List.empty(growable: true);

  List<DatabaseItem>? databaseItems = [];

  List<DatabaseItem>? currentChosenDatabaseItems = [];
  List<String>? currentChosenDatabaseItemsString = [];

  

  void initialise(Exercise? exercise, bool isUpdate) {


  }


  
  void setDateRange(DateTimeRange timeRange){
    start = timeRange.start;
    stop = timeRange.end;
    startDateController.text = "${start!.year}-${start!.month}-${start!.day}";
    stopDateController.text = "${stop!.year}-${stop!.month}-${stop!.day}";
  }


  void calculate()  {

    var exercises = _exerciseService.savedExercises.where((element){return ((element.start.isAtSameMomentAs(start!) ||element.start.isAfter(start!))&& (element.stop.isAtSameMomentAs(stop!) ||element.stop.isBefore(stop!)));});
    
    
    exercises.forEach((element) {
      element.databaseItems!.forEach((currentItem) {
        if (currentChosenDatabaseItems!
            .where((currentElement) =>
        currentElement.itemName == currentItem.itemName)
            .isNotEmpty) {
          var index = currentChosenDatabaseItems!.indexWhere((
              indexOfElement) => indexOfElement.itemName == element.name);
          var item = currentChosenDatabaseItems![index];
          currentChosenDatabaseItems!.remove(item);
          var quantity = item.quantity! + currentItem.quantity!;
          var newItem = item.copyWith(quantity: quantity);
          currentChosenDatabaseItems!.add(newItem);
        } else {
          currentChosenDatabaseItems!.add(currentItem);
        }
      });
    });
    notifyListeners();
  }

  void navigateBack(int numberOfPops) =>
      _navigationService.back();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

}