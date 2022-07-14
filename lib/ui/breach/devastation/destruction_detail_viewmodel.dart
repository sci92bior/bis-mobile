import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/pdf/pdf_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DestructionDetailViewModel extends BaseViewModel{

  final log = getLogger('DestructionDetailViewModel');
  final _navigationService= locator<NavigationService>();
  final _pdfService= locator<PdfService>();

  final place = TextEditingController();
  final name = TextEditingController();
  final description = TextEditingController();
  final date = TextEditingController();
  final creation = TextEditingController();
  final update = TextEditingController();
  final recomendation = TextEditingController();
  final performer = TextEditingController();
  final worktype = TextEditingController();

  bool updateView = false;

  bool isPdfGenerated = false;

  void changeToUpdateView(){
    print(updateView);
    updateView = true;
    notifyListeners();
  }
  void initialise(Destruction destruction){
    place.text = destruction.place!;
    name.text = destruction.name;
    description.text = destruction.description!;
    date.text = "${DateFormat.yMd().format(destruction.created)} ${DateFormat.Hm().format(destruction.created)}";
    update.text = destruction.modified.toString();
    performer.text = destruction.performer!;
    worktype.text = destruction.workType!.name;

    if(destruction.recomendation!=null) {
      recomendation.text = destruction.recomendation!;
    }
  }

  void navigateToDestructionEdit(Destruction destruction){
    _navigationService.navigateTo(Routes.newDestructionView, arguments: NewDestructionViewArguments(destruction: destruction, isUpdate: true));
  }

  void navigateToDestructionCopy(Destruction destruction){
    _navigationService.navigateTo(Routes.newDestructionView, arguments: NewDestructionViewArguments(destruction: destruction, isUpdate: false));
  }

  void navigateToExplosiveUnitDetail(ExplosiveUnit explosiveUnit){
    _navigationService.navigateTo(Routes.explosiveUnitDetailView, arguments: ExplosiveUnitDetailViewArguments(explosiveUnit: explosiveUnit));
  }

  Future<void> printAsPdf(Destruction destruction)async{
    isPdfGenerated = true;
    notifyListeners();
    await _pdfService.generatePDF(destruction);
    isPdfGenerated = false;
    notifyListeners();
  }

  void navigateToObstacleDetail(Obstacle obstacle){
    _navigationService.navigateTo(Routes.obstacleDetailView, arguments: ObstacleDetailViewArguments(obstacle: obstacle));
  }


}