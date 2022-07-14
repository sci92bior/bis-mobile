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

class NewExerciseViewModel extends FormViewModel{

  final log = getLogger('NewExerciseViewModel');
  final _navigationService = locator<NavigationService>();
  final _localizationService = locator<I10n>();
  final _explosiveUnitService = locator<ExplosiveUnitService>();
  final _ammoService = locator<AmmoService>();
  final _explosiveMaterialService = locator<ExplosiveMaterialService>();
  final _initiationSystemUnit = locator<InitiationSystemService>();
  final _exerciseService = locator<ExerciseService>();

  final _snackbarService = locator<SnackbarService>();

  final nameController = TextEditingController();
  final placeController = TextEditingController();
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


  void setCurrentList(List? chosenDatabaseItems){

    var chosenDatabaseItemsList = chosenDatabaseItems as List<String>;
    currentChosenDatabaseItemsString = chosenDatabaseItemsList;
    List<DatabaseItem> tempItemList = [];
    currentChosenDatabaseItemsString!.forEach((element) {
      if(currentChosenDatabaseItems!.where((item) => item.itemName==element).isNotEmpty){
        var index = currentChosenDatabaseItems?.indexWhere((temp) => temp.itemName==element);
        tempItemList.add(currentChosenDatabaseItems![index!]);
      }else{
        var item = databaseItems?.firstWhere((items) => element==items.itemName);
        tempItemList.add(item!);
      }
    });
    currentChosenDatabaseItems = tempItemList;

    notifyListeners();
  }

  void updateQuantity(DatabaseItem item, double quantity){
    var modifiedItem = item.copyWith(quantity: quantity);
    currentChosenDatabaseItems!.remove(item);
    currentChosenDatabaseItems!.add(modifiedItem);
    print(currentChosenDatabaseItems);
    notifyListeners();
  }

  void initialise(Exercise? exercise, bool isUpdate) {

    if(exercise!=null){
      exercise.databaseItems!.forEach((element) {
        currentChosenDatabaseItemsString!.add(element.itemName);
      });
      nameController.text = exercise.name;
      placeController.text = exercise.place;
      stopDateController.text = exercise.stop.toString();
      startDateController.text = exercise.start.toString();
      start = exercise.start;
      stop = exercise.stop;
      currentChosenDatabaseItems = exercise.databaseItems;
    }
    getExplosiveUnitList().forEach((element) {
      databaseItems?.add(DatabaseItem(itemName: element.name,itemType: DatabaseItemType.EXPLOSIVE_UNIT));
    });

    getExplosiveMaterial().forEach((element) {
      databaseItems?.add(DatabaseItem(itemName: element.name,itemType: DatabaseItemType.EXPLOSIVE_MATERIAL, suffix: element.unitType));
    });

    getInitiationSystemList().forEach((element) {
      databaseItems?.add(DatabaseItem(itemName: element.name,itemType: DatabaseItemType.INITIATION_SYSTEM));
    });

    getAmmoList().forEach((element) {
      databaseItems?.add(DatabaseItem(itemName: element.name,itemType: DatabaseItemType.AMMO));
    });

  }



  List<ExplosiveUnitCount> getExplosiveUnitCountList(){
    return explosiveUnitCountList;
  }

  void addElementToExplosiveUnitCount(){
    explosiveUnitCountList.add(ExplosiveUnitCount());
    notifyListeners();
  }


  void removeElementToExplosiveUnitCount(ExplosiveUnitCount object){
    explosiveUnitCountList.remove(object);
    notifyListeners();
  }

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');
  }

  List<ExplosiveUnit> getExplosiveUnitList(){
    return _explosiveUnitService.savedExplosiveUnits;
}

  List<Ammo> getAmmoList(){
    return _ammoService.getAllAmmos();
  }

  List<ExplosiveMaterial> getExplosiveMaterial(){
    return _explosiveMaterialService.getAllExplosiveMaterials();
  }

  List<InitiationSystem> getInitiationSystemList(){
    return _initiationSystemUnit.getAllInitiationSystem();
  }

  void setDateRange(DateTimeRange timeRange){
    start = timeRange.start;
    stop = timeRange.end;
    startDateController.text = "${start!.year}-${start!.month}-${start!.day}";
    stopDateController.text = "${stop!.year}-${stop!.month}-${stop!.day}";
  }


  void saveData(bool isUpdate)  {
    if(nameController.value.text.isEmpty){
      setValidationMessage(_localizationService.missingNameField);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingNameField
      );
      notifyListeners();
      return;
    }

    if(placeController.value.text.isEmpty){
      setValidationMessage(_localizationService.missingDescriptionField);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingDescriptionField
      );
      notifyListeners();
      return;
    }

    if(startDateController.value.text.isEmpty){
      setValidationMessage(_localizationService.checkInputData);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.checkInputData
      );
      notifyListeners();
      return;
    }

    if(stopDateController.value.text.isEmpty){
      setValidationMessage(_localizationService.checkInputData);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.checkInputData
      );
      notifyListeners();
      return;
    }

    List<DatabaseItem> databaseItemsToExercise = [];

    try {
      for (var element in currentChosenDatabaseItems!) {
        if (element.itemType == DatabaseItemType.EXPLOSIVE_UNIT) {
          var explosiveUnit = _explosiveUnitService.savedExplosiveUnits
              .firstWhere((explosiveUnit) =>
          explosiveUnit.name == element.itemName);
          var quantity = 0.0;
          for (var explosiveMaterial in explosiveUnit.explosiveMaterialCount!) {
            quantity = explosiveMaterial.quantity! * element.quantity!;
            databaseItemsToExercise.add(DatabaseItem(
                itemName: explosiveMaterial.explosiveMaterial!.name,
                itemType: DatabaseItemType.EXPLOSIVE_MATERIAL,
                quantity: quantity,
                suffix: explosiveMaterial.explosiveMaterial!.unitType));
          }
        }
      }
      for (var element in currentChosenDatabaseItems!) {
        if (element.itemType != DatabaseItemType.EXPLOSIVE_UNIT) {
          if (databaseItemsToExercise
              .where((currentElement) =>
          currentElement.itemName == element.itemName)
              .isNotEmpty) {
            var index = databaseItemsToExercise.indexWhere((
                indexOfElement) => indexOfElement.itemName == element.itemName);
            var item = databaseItemsToExercise[index];
            databaseItemsToExercise.remove(item);
            var quantity = item.quantity! + element.quantity!;
            var newItem = item.copyWith(quantity: quantity);
            databaseItemsToExercise.add(newItem);
          } else {
            databaseItemsToExercise.add(element);
          }
        }
      }
    }on Exception catch (e){
      _snackbarService.showSnackbar(message: _localizationService.checkInputData);
    }
    _exerciseService.saveToDatabase(Exercise(name: nameController.text, place: placeController.text, start: start!, stop: stop!, color: Random().nextInt(Colors.primaries.length),databaseItems: databaseItemsToExercise));
    notifyListeners();
    navigateBack(1);

  }

  void navigateBack(int numberOfPops) =>
      _navigationService.back();

}