import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/database/exercise_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';


class PlannerViewModel extends ReactiveViewModel with WidgetsBindingObserver{

  final _navigationService = locator<NavigationService>();
  final _exerciseService = locator<ExerciseService>();

  final List<Exercise> meetings = <Exercise>[];
  List<Exercise> currentMeetings = <Exercise>[];

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_exerciseService];

  void navigateToNewExercise(){
    _navigationService.navigateTo(Routes.newExerciseView, arguments: NewExerciseViewArguments( isUpdate: false));
  }

  void navigateToCalculateRange(){
    _navigationService.navigateTo(Routes.calculateRangeView, arguments: CalculateRangeViewArguments( isUpdate: false));
  }

  void navigateToExerciseDetail(Exercise exercise){
    _navigationService.navigateTo(Routes.newExerciseView, arguments: NewExerciseViewArguments( exercise: exercise,isUpdate: false));
  }

  void setCurrentMeetings(List<dynamic> tappedMeetings){
    currentMeetings = tappedMeetings.cast<Exercise>();
    notifyListeners();
  }

  void initialise() {
    meetings.clear();
   meetings.addAll(_exerciseService.savedExercises);
   notifyListeners();
  }
  void deleteFromList(int index){
    _exerciseService.deleteFromDatabase(currentMeetings[index]);
    currentMeetings.removeAt(index);
    meetings.remove(currentMeetings[index]);
    initialise();
  }

}