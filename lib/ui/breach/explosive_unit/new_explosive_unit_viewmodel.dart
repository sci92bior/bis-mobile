import 'dart:math';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/generated/l10n.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/explosive_material_service.dart';
import 'package:bis/services/database/explosive_unit_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/media_service.dart';
import 'package:bis/services/third_party/setup_snackbar_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NewExplosiveUnitViewModel extends FormViewModel{

  final log = getLogger('NewExplosiveUnitViewModel');
  final _navigationService = locator<NavigationService>();
  final _localizationService = locator<I10n>();
  final _explosiveMaterialService = locator<ExplosiveMaterialService>();
  final _mediaService = locator<MediaService>();
  final _explosiveUnitService = locator<ExplosiveUnitService>();
  final _snackbarService = locator<SnackbarService>();

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final madeTimeController = TextEditingController();
  final List<TextEditingController> quantityControllers = List.empty(growable: true);
  late DateTime creationDate;

  late String _currentExplosiveUnitType;
  final List<ExplosiveMaterialCount> explosiveMaterialCountList = List.empty(growable: true);
  final List<String> photos = List.empty(growable: true);
  double newTnt = 0.0;
  double newActual = 0.0;
  double msd = 0.0;

  double calculateResult = 0.0;


  String get getCurrentExplosiveUnitType => _currentExplosiveUnitType;

  void initialise(ExplosiveUnit? explosiveUnit, bool isUpdated) {
    if (explosiveUnit != null) {
      creationDate = explosiveUnit.created;
      if(isUpdated){
        nameController.text = explosiveUnit.name;
        descriptionController.text = explosiveUnit.description;
        madeTimeController.text = explosiveUnit.madeTime.toString();
      }
      if(explosiveUnit.explosiveUnitType==ExplosiveUnitType.EXOTIC){
        _currentExplosiveUnitType = _localizationService.exoticType;
      }else{
        _currentExplosiveUnitType = _localizationService.standardType;
      }
      if(explosiveUnit.explosiveMaterialCount!=null) {
        explosiveMaterialCountList.addAll(explosiveUnit.explosiveMaterialCount!);
      }
      if(explosiveUnit.photos!=null) {
        photos.addAll(explosiveUnit.photos!);
      }
      calculateData();
    } else {
      _currentExplosiveUnitType = _localizationService.standardType;
      creationDate = DateTime.now();
    }
  }

  void setCurrentExplosiveUnitype(String explosiveUnitType){
    _currentExplosiveUnitType = explosiveUnitType;
  }
  

  void addElementToExplosiveMaterialCount(){
    explosiveMaterialCountList.add(ExplosiveMaterialCount());
    notifyListeners();
  }

  void updateExplosiveMaterial( double? quantity,String? explosiveMaterialName, int index){
    if(explosiveMaterialName!=null){
      var buildMaterialCount = explosiveMaterialCountList[index].copyWith(explosiveMaterial: _explosiveMaterialService.getAllExplosiveMaterials().where((element) => element.name==explosiveMaterialName).first);
      explosiveMaterialCountList[index] = buildMaterialCount;
    }
    if(quantity!=null ){
      print(quantity);
      var buildMaterialCount = explosiveMaterialCountList[index].copyWith(quantity: quantity);
      explosiveMaterialCountList[index] = buildMaterialCount;
    }
  }

  void calculateData(){
    newTnt = 0.0;
    newActual = 0.0;
    msd = 0.0;
    for (var element in explosiveMaterialCountList) {
      if(element.explosiveMaterial!=null && element.quantity!=null) {
        newTnt += (element.explosiveMaterial!.grain * element.quantity! *
            element.explosiveMaterial!.rFactor);
        newActual += (element.explosiveMaterial!.grain * element.quantity!);
      }
    }
    msd = pow(newTnt * 2.0 / 1000.0,  1/3) * 5.58;
    notifyListeners();
  }
  

  void removeElementFromExplosiveMaterialCount(ExplosiveMaterialCount object){
    explosiveMaterialCountList.remove(object);
    calculateData();
    notifyListeners();
  }

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');
  }

  List<ExplosiveMaterial> getConcreteMaterialList(){
    return _explosiveMaterialService.getAllExplosiveMaterials();
}

  List<ExplosiveMaterial> getExplosiveMaterialNameList(){
    return _explosiveMaterialService.getAllExplosiveMaterials();
  }

  List<String> getExplosiveUnitTypeList(){
    return [
      _localizationService.standardType,
      _localizationService.exoticType
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
    }else  if(_explosiveUnitService.savedExplosiveUnits.where((element) => element.name==nameController.value.text).isNotEmpty && !isUpdate){
      setValidationMessage(_localizationService.obstacleAlreadyExist(nameController.value.text));
      notifyListeners();
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.obstacleAlreadyExist(nameController.value.text)
      );
      return;
    }
    ExplosiveUnitType explosiveUnitType;

    if(_currentExplosiveUnitType==_localizationService.standardType){
      explosiveUnitType= ExplosiveUnitType.STANDARD;
    }else {
      explosiveUnitType= ExplosiveUnitType.EXOTIC;
    }
    var explosiveUnitToSave = ExplosiveUnit(name: nameController.value.text, description: descriptionController.value.text, photos: photos, explosiveMaterialCount: explosiveMaterialCountList, explosiveUnitType: explosiveUnitType, created: creationDate, modified: isUpdate ? DateTime.now() : null, msd: msd!=0.0 ? msd : null, newActual: newActual!=0.0 ? newActual : null, newTnt: newTnt!=0.0 ? newTnt : null, madeTime: int.parse(madeTimeController.text));
    if(!isUpdate && !isRapid) {
      _explosiveUnitService.saveToDatabase(explosiveUnitToSave);
      navigateBack(1);
    }else if(isRapid){
      _explosiveUnitService.saveToDatabase(explosiveUnitToSave);
      _navigationService.back(result: explosiveUnitToSave);
  }else{
      _explosiveUnitService.updateInDatabase(explosiveUnitToSave);
      navigateBack(2);
    }

    _snackbarService.showCustomSnackBar(
      variant: SnackbarType.success,
      message: !isUpdate ? _localizationService.obstacleCreatedSuccessfully(explosiveUnitToSave.name): _localizationService.obstacleUpdatedSuccessfully(explosiveUnitToSave.name)
    );
    notifyListeners();

  }

  void updateQuantity(int index) async {
    double result = await _navigationService.navigateTo(Routes.calculatorView, arguments: CalculatorViewArguments(isRapid: true));
    quantityControllers[index].text = result.toString();
    updateExplosiveMaterial(result,null, index);
    calculateData();
  }

  void navigateBack(int numberOfPops) =>
      _navigationService.popRepeated(numberOfPops);

}