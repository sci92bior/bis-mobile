import 'dart:io';
import 'dart:math';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/generated/l10n.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/destruction_service.dart';
import 'package:bis/services/database/expected_behaviour_service.dart';
import 'package:bis/services/database/expected_effect_service.dart';
import 'package:bis/services/database/explosive_material_service.dart';
import 'package:bis/services/database/explosive_unit_service.dart';
import 'package:bis/services/database/guns_service.dart';
import 'package:bis/services/database/initiation_system_service.dart';
import 'package:bis/services/database/mount_type_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/database/tools_service.dart';
import 'package:bis/services/media_service.dart';
import 'package:bis/services/third_party/setup_dialog_ui.dart';
import 'package:bis/services/third_party/setup_snackbar_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../dumb_widgets/process_item.dart';

class NewDestructionViewModel extends FormViewModel {
  final log = getLogger('NewDestructionViewModel');
  final _navigationService = locator<NavigationService>();
  final _localizationService = locator<I10n>();
  final _mediaService = locator<MediaService>();
  final _explosiveUnitService = locator<ExplosiveUnitService>();
  final _obstacleService = locator<ObstacleService>();
  final _initiationSystemService = locator<InitiationSystemService>();
  final _gunsService = locator<GunsService>();
  final _toolsService = locator<ToolsService>();
  final _destructionService = locator<DestructionService>();
  final _snackbarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _mountTypeService = locator<MountTypeService>();
  final _expectedBehaviourService= locator<ExpectedBehaviourService>();
  final _expectedEffectService= locator<ExpectedEffectService>();

  final nameController = TextEditingController();
  final performerController = TextEditingController();
  final descriptionController = TextEditingController();
  final placeController = TextEditingController();
  final dateController = TextEditingController();
  final recomendationController = TextEditingController();
  final processDescriptionController = TextEditingController();
  final processTitleController = TextEditingController();
  final processTimeController = TextEditingController();

  final List<TextEditingController> quantityControllers =
      List.empty(growable: true);
  late DateTime creationDate;
  late DateTime date;

  ExplosiveUnit? chosenExplosiveUnit;
  ExpectedBehaviour? chosenExpectedBehaviour;
  ExpectedEffect? chosenExpectedEffect;
  Obstacle? chosenObstacle;
  InitiationSystem? chosenInitiationSystem;
  ExplosiveUnit? secondChosenExplosiveUnit;
  InitiationSystem? secondChosenInitiationSystem;
  MountType? chosenMountType;
  Gun? chosenGun;
  Tool? chosenTool;
  Gun? secondChosenGun;
  Tool? secondChosenTool;
  bool isGood = true;
  bool twoStage = false;
  WorkType? workType;

  final List<PhotoWithDescription> photosBefore = [];
  final List<PhotoWithDescription> photosAfter = [];
  final List<ProcessItem> process = [];

  double seal = 0;

  late String _currentWorkType;

  String get getWorkType => _currentWorkType;

  void setCurrentWorkType(String workType) {
    _currentWorkType = workType;
  }

  void cropImage(int i, bool isAfter ) async {
    File? croppedFile = await _mediaService.cropImage(isAfter ? photosAfter[i].path : photosBefore[i].path);
    if(croppedFile!=null){
      var photo = isAfter ? photosAfter[i].copyWith(path: photosAfter[i].path+"cropped") : photosBefore[i].copyWith(path : photosBefore[i].path+"cropped");
      if(isAfter){
        photosAfter.removeAt(i);
        photosAfter.add(photo);
      }else{
        photosBefore.removeAt(i);
        photosBefore.add(photo);
      }
      await croppedFile.copy(photo.path);
      notifyListeners();
    }

  }
  void initialise(Destruction? destruction, bool isUpdated) {
    if (destruction != null) {
      creationDate = destruction.created;
      if (isUpdated) {
        nameController.text = destruction.name;
      }
      if (destruction.description != null) {
        descriptionController.text = destruction.description!;
      }
      if (destruction.place != null) {
        placeController.text = destruction.place!;
      }

      if (destruction.recomendation != null) {
        recomendationController.text = destruction.recomendation!;
      }
      if (destruction.workType == WorkType.EXERCISE) {
        _currentWorkType = _localizationService.exercise;
      } else {
        _currentWorkType = _localizationService.realWork;
      }
      chosenMountType = destruction.mountType;
      performerController.text = destruction.performer!;
      date = destruction.date;
      dateController.text = date.toIso8601String();
      chosenExplosiveUnit = destruction.explosiveUnit;
      chosenTool = destruction.tool;
      chosenGun = destruction.gun;
      process.addAll(destruction.process!);
      chosenExpectedEffect = destruction.expectedEffect;
      chosenInitiationSystem = destruction.initiationSystem;
      chosenExpectedBehaviour = destruction.expectedBehaviour;

      chosenObstacle = destruction.obstacle;
      if (destruction.photosAfter != null) {
        photosAfter.addAll(destruction.photosAfter!);
      }
      if (destruction.photosBefore != null) {
        photosBefore.addAll(destruction.photosBefore!);
      }
      isGood = destruction.isGood;
      twoStage = destruction.twoStage;
      secondChosenInitiationSystem = destruction.secondInitiationSystem;
      secondChosenExplosiveUnit = destruction.secondExplosiveUnit;
      secondChosenTool = destruction.secondTool;
      secondChosenGun = destruction.secondGun;

    } else {
      creationDate = DateTime.now();
      date = DateTime.now();
      _currentWorkType = _localizationService.exercise;
    }
  }

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');
  }

  void setResult(bool breachResult) {
    isGood = breachResult;
    notifyListeners();
  }

  void setExplosionUnit(ExplosiveUnit? explosiveUnit) {
    chosenExplosiveUnit = explosiveUnit;
    notifyListeners();
  }

  void setTwoStage(bool result) {
    twoStage = result;
    notifyListeners();
  }

  List<String> getWorkTypeList() {
    return [_localizationService.exercise, _localizationService.realWork];
  }

  List<Obstacle> getObstacleList() {
    return _obstacleService.savedObstacles;
  }

  List<ExplosiveUnit> getExplosiveUnitList() {
    return _explosiveUnitService.savedExplosiveUnits;
  }

  List<ExpectedBehaviour> getExpectedBehaviours() {
    return _expectedBehaviourService.getAllBehaviours();
  }

  List<InitiationSystem> getInitiationSystemList() {
    return _initiationSystemService.getAllInitiationSystem();
  }

  List<ExpectedEffect> getExpectedEffectList() {
    return _expectedEffectService.getAllEffects();
  }

  List<MountType> getMountTypeList() {
    return _mountTypeService.getAllMountTypes();
  }

  List<Gun> getGunsList() {
    return _gunsService.getAllGuns();
  }

  List<Tool> getToolsList() {
    return _toolsService.getAllTools();
  }

  void setDate(DateTime dateValue) {
    date = dateValue;
    dateController.text = date.toString();
    notifyListeners();
  }

  void addProcessItem() {
    process.add(ProcessItem(description: processDescriptionController.text, title: processTitleController.text, time: double.parse(processTimeController.text)));
    processTitleController.clear();
    processDescriptionController.clear();
    processTimeController.clear();
    notifyListeners();
    _navigationService.popRepeated(1);
  }

  void deleteProcessItem(int index) {
    process.removeAt(index);
    notifyListeners();
  }

  Future selectImage(
      {required bool fromGallery, required bool isBefore}) async {
    var selectedImage = await runBusyFuture(
        fromGallery ? _mediaService.openGallery() : _mediaService.openCamera());
    if (isBefore) {
      photosBefore.add(PhotoWithDescription(path: selectedImage!.path));
    } else {
      photosAfter.add(PhotoWithDescription(path: selectedImage!.path));
    }

    notifyListeners();
  }

  void deletePhotosBefore(int index) {
    print(photosBefore);
    photosBefore.removeAt(index);
    notifyListeners();
  }

  void deletePhotosAfter(int index) {
    print(photosAfter);
    photosAfter.removeAt(index);
    notifyListeners();
  }

  Future? saveData(bool isUpdate) async {
    if (nameController.value.text.isEmpty) {
      setValidationMessage(_localizationService.missingNameField);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingNameField);
      notifyListeners();
      return;
    } else if (descriptionController.value.text.isEmpty) {
      setValidationMessage(_localizationService.missingDescriptionField);
      notifyListeners();
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingDescriptionField);
      return;
    }

    if (_currentWorkType == _localizationService.exercise) {
      workType = WorkType.EXERCISE;
    } else {
      workType = WorkType.REAL_WORK;
    }


    var devastationToSave = Destruction(
      id: _destructionService.savedDestructions.length +1,
        name: nameController.value.text,
        description: descriptionController.value.text,
        created: creationDate,
        modified: isUpdate ? DateTime.now() : null,
        gun: chosenGun,
        workType: workType,
        expectedEffect: chosenExpectedEffect,
        tool: chosenTool,
        expectedBehaviour: chosenExpectedBehaviour,
        secondExplosiveUnit: secondChosenExplosiveUnit,
        secondInitiationSystem: secondChosenInitiationSystem,
        explosiveUnit: chosenExplosiveUnit,
        initiationSystem: chosenInitiationSystem,
        mountType: chosenMountType,
        obstacle: chosenObstacle,
        secondGun: secondChosenGun,
        secondTool: secondChosenTool,
        isGood: isGood,
        performer: performerController.value.text,
        seal: seal,
        twoStage: twoStage,
        process: process,
        place: placeController.text,
        date: date,
        photosAfter: photosAfter,
        photosBefore: photosBefore,
        recomendation: recomendationController.value.text);
    if (!isUpdate) {
      _destructionService.saveToDatabase(devastationToSave);
      navigateBack(1);
    } else {
      _destructionService.updateInDatabase(devastationToSave);
      navigateBack(2);
    }

    _snackbarService.showCustomSnackBar(
        variant: SnackbarType.success,
        message: !isUpdate
            ? _localizationService
                .destructionCreatedSuccessfully(devastationToSave.name)
            : _localizationService
                .destructionUpdatedSuccessfully(devastationToSave.name));
    notifyListeners();
  }

  Future addDescriptionToPhoto(int index, bool isBefore) async {
    var currentDescription = isBefore
        ? photosBefore[index].description
        : photosAfter[index].description;
    var description = await _dialogService.showCustomDialog(
        title: _localizationService.addDescriptionToPhoto,
        description: currentDescription,
        mainButtonTitle: "OK",
        showIconInAdditionalButton: true,
        variant: DialogType.Form);
    var descriptionValue = description?.data as List<String>;
    if (descriptionValue.isNotEmpty) {
      if (isBefore) {
        var copiedPhoto =
            photosBefore[index].copyWith(description: descriptionValue.first);
        photosBefore.removeAt(index);
        photosBefore.insert(index, copiedPhoto);
      } else {
        var copiedPhoto =
            photosAfter[index].copyWith(description: descriptionValue.first);
        photosAfter.removeAt(index);
        photosAfter.insert(index, copiedPhoto);
      }
    }
  }

  void navigateBack(int numberOfPops) =>
      _navigationService.popRepeated(numberOfPops);

  void navigateToRapidObstacle() async {
    var obstacle = await _navigationService.navigateTo(Routes.newObstacleView,
        arguments: NewObstacleViewArguments(isUpdate: false, isRapid: true));
    chosenObstacle = obstacle as Obstacle;
    notifyListeners();
  }

  navigateToRapidExplosionUnit() async {
    var result = await _navigationService
        .navigateTo(Routes.newExplosiveUnitView,
            arguments:
                NewExplosiveUnitViewArguments(isUpdate: false, isRapid: true))
        ?.then((value) {
      chosenExplosiveUnit = value as ExplosiveUnit;
      initialise(null, false);
      notifyListeners();
    });
  }
}
