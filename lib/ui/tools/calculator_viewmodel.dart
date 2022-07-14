import 'package:bis/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class CalculatorViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();

  void goBack(double result){
    _navigationService.back(result: result);
  }
  
}