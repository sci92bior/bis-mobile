import 'package:bis/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class UtilsViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  void goToExplosiveMaterial(){
    _navigationService.navigateTo(
        Routes.explosiveMaterialView);
  }

  void goToConcreteMaterial(){
    _navigationService.navigateTo(
        Routes.buildMaterialView);
  }

  void goToAmmo(){
    _navigationService.navigateTo(
        Routes.ammoView);
  }

  void goToGun(){
    _navigationService.navigateTo(
        Routes.gunView);
  }

  void goToTool(){
    _navigationService.navigateTo(
        Routes.toolView);
  }

  void goToInitiationSystem(){
    _navigationService.navigateTo(
        Routes.initiationSystemView);
  }

}