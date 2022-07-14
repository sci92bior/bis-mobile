import 'package:bis/services/third_party/setup_dialog_ui.dart';
import 'package:bis/services/third_party/setup_snackbar_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bis/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() {
  setupLocator();
  setupSnackbarUi();
  setupDialogUi();
  runApp(const BisApp());
}

class BisApp extends StatelessWidget {
  const BisApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bis APP',
      localizationsDelegates: const [
        I10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: I10n.delegate.supportedLocales,

      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        fontFamily: 'Oswald',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorObservers: [StackedService.routeObserver],
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      //home: DS,
    );
  }

}


