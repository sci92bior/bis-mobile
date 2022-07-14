import 'dart:convert';
import 'dart:js';

import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/constants/app_keys.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/storage_service.dart';
import 'package:bis/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../api/backend_client.dart';
import '../../utils/shared_preferences.dart';
import 'login_view.form.dart';

class LoginViewModel extends FormViewModel {
  final log = getLogger('LoginViewModel');

  final _navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  Future<bool> runAuthentication() async {
    var backendClient = BackendClient();
    print("$usernameValue, $passwordValue");
    var response = await backendClient.signIn(usernameValue!, passwordValue!);
    try {
      if (response.statusCode == 200) {
        await saveDataAfterLogin(AuthDto
            .fromJson(json.decode(response.body))
        );
       return true;
      }
    }catch(ex) {
      return false;
    }
    return false;
  }

  @override
  void setFormStatus() {}

  Future saveData() async {
    log.i('valued:$formValueMap');

    try {
      final result = await runBusyFuture(runAuthentication(), throwException: true);
      log.i(result);
      await _handleAuthenticationResponse(result);
    } on Exception catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  /// Checks if the result has an error. If it doesn't we navigate to the success view
  /// else we show the friendly validation message.
  Future<void> _handleAuthenticationResponse(bool authResult) async {
      _navigationService.replaceWith(Routes.homeView, arguments: HomeViewArguments(id: 0));
  }

  Future<void> saveDataAfterLogin(AuthDto auth) async {
    await MySharedPreferences.instance.setStringValue('jwtToken', auth.token.accessToken);
    await MySharedPreferences.instance.setBooleanValue('isLoggedIn', true);
    await MySharedPreferences.instance.setStringValue('username', usernameValue!);
    await MySharedPreferences.instance.setStringValue('password', passwordValue!);
    await MySharedPreferences.instance.setStringValue('fullName', "${auth.firstName} ${auth.lastName}");
  }
}
