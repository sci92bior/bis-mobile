import 'dart:math';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/generated/l10n.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/media_service.dart';
import 'package:bis/services/third_party/setup_snackbar_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NewObstacleViewModel extends FormViewModel{

  final log = getLogger('NewObstacleViewModel');
  final _navigationService = locator<NavigationService>();
  final _localizationService = locator<I10n>();
  final _buildMaterialService = locator<BuildMaterialService>();
  final _mediaService = locator<MediaService>();
  final _obstacleService = locator<ObstacleService>();
  final _snackbarService = locator<SnackbarService>();

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  late DateTime creationDate;

  late String _currentObstacleType;
  final List<BuildMaterialCount> _buildMaterialCountList = List.empty(growable: true);
  final List<String> photos = List.empty(growable: true);
  double thickness = 0.0;


  String get getCurrentObstacleType => _currentObstacleType;

  void initialise(Obstacle? obstacle, bool isUpdate) {
    if (obstacle != null) {
      if(isUpdate){
        nameController.text = obstacle.name;
        descriptionController.text = obstacle.description;}
      creationDate = obstacle.created;
      _currentObstacleType = obstacle.obstacleType.name;
      if(obstacle.buildMaterials!=null) {
        _buildMaterialCountList.addAll(obstacle.buildMaterials!);
      }
      if(obstacle.photos!=null) {
        photos.addAll(obstacle.photos!);
      }
      calculateData();

      if(obstacle.obstacleType==ObstacleType.WALL){
        _currentObstacleType= _localizationService.wall;
      }else if(obstacle.obstacleType==ObstacleType.WINDOW){
        _currentObstacleType= _localizationService.window;
      }else if(obstacle.obstacleType==ObstacleType.DOOR){
        _currentObstacleType= _localizationService.door;
      }else {
        _currentObstacleType= _localizationService.ceiling;
      }
    } else {
      _currentObstacleType = _localizationService.wall;
      creationDate = DateTime.now();
    }
  }

  void setCurrentObstacleType(String obstacleType){
    _currentObstacleType = obstacleType;
  }


  List<BuildMaterialCount> getBuildMaterialsCountList(){
    return _buildMaterialCountList;
  }

  void addElementToConcreteMaterialCount(){
    _buildMaterialCountList.add(BuildMaterialCount());
    notifyListeners();
  }

  void updateBuildMaterial(double? quantity, String? buildMaterialName, int index){
    if(buildMaterialName!=null){
      var buildMaterialCount = _buildMaterialCountList[index].copyWith(buildMaterial: _buildMaterialService.getAllBuildMaterials().where((element) => element.name==buildMaterialName).first);
      _buildMaterialCountList[index] = buildMaterialCount;
    }
    if(quantity!=null){
      var buildMaterialCount = _buildMaterialCountList[index].copyWith(quantity: quantity);
      _buildMaterialCountList[index] = buildMaterialCount;
    }
    print(_buildMaterialCountList);
    calculateData();
    notifyListeners();
  }

  void calculateData(){
    thickness = 0.0;
    for (var element in _buildMaterialCountList) {
      thickness += element.quantity!;
    }
    notifyListeners();
  }
  

  void removeElementToConcreteMaterialCount(BuildMaterialCount object){
    _buildMaterialCountList.remove(object);
    calculateData();
    notifyListeners();
  }

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');
  }

  List<BuildMaterial> getConcreteMaterialList(){
    return _buildMaterialService.getAllBuildMaterials();
}

  List<String> getBuildMaterialNameList(){
    return _buildMaterialService.getListWithNames();
  }

  List<String> getObstaclesTypeList(){
    return [
      _localizationService.wall,
      _localizationService.door,
      _localizationService.window,
      _localizationService.ceiling
    ];
  }

  Future selectImage({required bool fromGallery}) async {
    var selectedImage = await runBusyFuture(fromGallery ? _mediaService.openGallery() : _mediaService.openCamera());
    photos.add(selectedImage!.path);
    print(photos);
    notifyListeners();
  }

  void deletePhoto(int index){
    photos.removeAt(index);
    notifyListeners();
  }


  Future? saveData(bool isUpdate, bool isRapid) async {
    if(nameController.value.text.isEmpty){
      setValidationMessage(_localizationService.missingNameField);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingNameField
      );
      notifyListeners();
      return;
    }else  if(descriptionController.value.text.isEmpty){
      setValidationMessage(_localizationService.missingDescriptionField);
      notifyListeners();
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingDescriptionField
      );
      return;
    }else  if(_obstacleService.savedObstacles.where((element) => element.name==nameController.value.text).isNotEmpty && !isUpdate){
      setValidationMessage(_localizationService.obstacleAlreadyExist(nameController.value.text));
      notifyListeners();
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.obstacleAlreadyExist(nameController.value.text)
      );
      return;
    }
    ObstacleType obstacleType;

    if(_currentObstacleType==_localizationService.wall){
      obstacleType= ObstacleType.WALL;
    }else if(_currentObstacleType==_localizationService.window){
      obstacleType= ObstacleType.WINDOW;
    }else if(_currentObstacleType==_localizationService.door){
      obstacleType= ObstacleType.DOOR;
    }else {
      obstacleType= ObstacleType.CEILING;
    }
    var obstacleToSave = Obstacle(name: nameController.value.text, description: descriptionController.value.text, photos: photos, buildMaterials: _buildMaterialCountList, obstacleType: obstacleType, created: creationDate, modified: isUpdate ? DateTime.now() : null, thickness: thickness!=0.0 ? thickness : null);
    if(!isUpdate && !isRapid) {
      _obstacleService.saveToDatabase(obstacleToSave);
      navigateBack(1);
    }else if(isRapid){
      _obstacleService.saveToDatabase(obstacleToSave);
      _navigationService.back(result: obstacleToSave);
      notifyListeners();
    }
    else{
      _obstacleService.updateInDatabase(obstacleToSave);
      navigateBack(2);
    }

    _snackbarService.showCustomSnackBar(
      variant: SnackbarType.success,
      message: !isUpdate ? _localizationService.obstacleCreatedSuccessfully(obstacleToSave.name): _localizationService.obstacleUpdatedSuccessfully(obstacleToSave.name)
    );
    notifyListeners();

  }

  void navigateBack(int numberOfPops) =>
      _navigationService.popRepeated(numberOfPops);

}