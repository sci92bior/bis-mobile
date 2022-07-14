import 'package:bis/app/app.logger.dart';
import 'package:bis/services/storage_service.dart';
import 'package:bis/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {

  final log = getLogger('AuthenticationViewModel');
  final _navigationService= locator<NavigationService>();
  final _userService= locator<UserService>();

  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;

  bool _reverse = false;
  bool get reverse => _reverse;

  String _state = "init";
  String get state => _state;


  String getUsername(){
    return _userService.getUsername();
  }
  void setViewState(String state){
    _state = state;
    notifyListeners();
  }

  void setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];

}