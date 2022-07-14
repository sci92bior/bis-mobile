import 'package:bis/app/app.locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

enum SnackbarType { success, error, info }

void setupSnackbarUi() {
  final service = locator<SnackbarService>();

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.error,
    config: SnackbarConfig(
      backgroundColor: Colors.red,
      textColor: Colors.white,
      borderRadius: 1
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackbarType.success,
    config: SnackbarConfig(
      backgroundColor: Colors.green,
      textColor: Colors.white,
      borderRadius: 1
    ),
  );
}