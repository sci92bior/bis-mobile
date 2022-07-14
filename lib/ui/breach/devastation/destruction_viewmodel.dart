import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/destruction_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../generated/l10n.dart';
import '../../../services/third_party/setup_snackbar_ui.dart';

class DestructionViewModel extends ReactiveViewModel with WidgetsBindingObserver{

  final log = getLogger('DevastationViewModel');
  final _navigationService= locator<NavigationService>();
  final _localizationService= locator<I10n>();
  final _destrictionService = locator<DestructionService>();
  final _snackbarService = locator<SnackbarService>();

  String _scanBarcode = 'Unknown';



  @override
  List<ReactiveServiceMixin> get reactiveServices => [_destrictionService];

  List<Destruction> get obstacles => _destrictionService.savedDestructions;
  List<Destruction> currentDestructions = List.empty(growable: true);

  void initialise(){
    currentDestructions = obstacles;
  }

  void navigateToNewDestructionForm(){
    _navigationService.navigateTo(Routes.newDestructionView, arguments: NewDestructionViewArguments(isUpdate: false));
  }

  void navigateToDestructionDetail(Destruction destruction){
    _navigationService.navigateTo(Routes.destructionDetailView, arguments: DestructionDetailViewArguments(destruction: destruction));
  }

  void deleteFromList(int index){
    _destrictionService.deleteFromDatabase(currentDestructions[index]);

  }

  void filterList(String enteredKeyword) {
    List<Destruction> results = [];
    if (enteredKeyword.isEmpty) {
      results = obstacles;
    } else {
      results = obstacles
          .where((user) =>
          user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    currentDestructions = results;
    notifyListeners();
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', _localizationService.cancel, true, ScanMode.QR);
      _navigationService.navigateTo(Routes.destructionDetailView, arguments: DestructionDetailViewArguments(destruction: _destrictionService.findById(int.parse(barcodeScanRes))));
    } on Exception {
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.scansNotFound);
    }
  }

}