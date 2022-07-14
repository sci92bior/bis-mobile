import 'dart:math';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/generated/l10n.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/course/course_service.dart';
import 'package:bis/services/database/ammo_service.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/exercise_service.dart';
import 'package:bis/services/database/explosive_material_service.dart';
import 'package:bis/services/database/explosive_unit_service.dart';
import 'package:bis/services/database/initiation_system_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/media_service.dart';
import 'package:bis/services/third_party/setup_snackbar_ui.dart';
import 'package:bis/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NewCourseViewModel extends FormViewModel{

  final log = getLogger('NewCourseViewModel');
  final _navigationService = locator<NavigationService>();
  final _userService =locator<UserService>();
  final _courseService =locator<CourseService>();
  final _localizationService =locator<I10n>();
  final _snackbarService =locator<SnackbarService>();

  final nameController = TextEditingController();
  final placeController = TextEditingController();
  final startDateController = TextEditingController();
  final stopDateController = TextEditingController();
  DateTime? start;
  DateTime? stop;
  User? chosenInstructor;
  List<TextEditingController> topics = List.empty(growable: true);


  List<User>? currentChosenStudents = [];
  List<String>? currentChosenDatabaseItemsString = [];

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');
  }

  void saveCourse(){
    if(nameController.value.text.isEmpty){
      setValidationMessage(_localizationService.missingNameField);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingNameField
      );
      notifyListeners();
      return;
    }else if(startDateController.value.text.isEmpty || stopDateController.value.text.isEmpty ){
      setValidationMessage(_localizationService.missingStartStopDate);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingStartStopDate
      );
      notifyListeners();
      return;
    }else if(chosenInstructor == null){
      setValidationMessage(_localizationService.missingInstructor);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingInstructor
      );
      notifyListeners();
      return;
    }else if(currentChosenStudents!.isEmpty){
      setValidationMessage(_localizationService.missingStudents);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingStudents
      );
      notifyListeners();
      return;
    }else if(topics.isEmpty){
      setValidationMessage(_localizationService.missingTopics);
      _snackbarService.showCustomSnackBar(
          variant: SnackbarType.error,
          message: _localizationService.missingTopics
      );

      notifyListeners();
      return;
    }
    var topicsList = topics.map((e) => Topic(name: e.text, courseName: nameController.text, done: false)).toList();
    var course = Course(name: nameController.text, courseLeader: chosenInstructor!, startDate: start!, endDate: stop!,courseMarks: List.empty(growable: true), participants: currentChosenStudents!, topics: topicsList);
    _courseService.saveToDatabase(course);
    _navigationService.back();
    _snackbarService.showCustomSnackBar(
        variant: SnackbarType.success,
        message: _localizationService.obstacleCreatedSuccessfully(course.name)
    );
    notifyListeners();
  }
  void setCurrentList(List? chosenDatabaseItems){
    var chosenDatabaseItemsList = chosenDatabaseItems as List<String>;
    currentChosenDatabaseItemsString = chosenDatabaseItemsList;
    List<User> tempItemList = [];
    for (var element in currentChosenDatabaseItemsString!) {
      if(currentChosenStudents!.where((item) => item.userName==element).isNotEmpty){
        var index = currentChosenStudents?.indexWhere((temp) => temp.userName==element);
        tempItemList.add(currentChosenStudents![index!]);
      }else{
        var item = getAllStudents().firstWhere((items) => element==items.userName);
        tempItemList.add(item);
      }
    }
    currentChosenStudents = tempItemList;
    notifyListeners();
  }

  void addItemToList(){
    topics.add(TextEditingController());
    notifyListeners();
  }

  void removeFromTopicList(int index){
    topics.removeAt(index);
    notifyListeners();
  }

  List<User> getAllInstructors(){
    return _userService.getInstructors();
  }

  List<User> getAllStudents(){
    return _userService.getAllStudents();
  }

  void setDateRange(DateTimeRange timeRange){
    start = timeRange.start;
    stop = timeRange.end;
    startDateController.text = "${start!.year}-${start!.month}-${start!.day}";
    stopDateController.text = "${stop!.year}-${stop!.month}-${stop!.day}";
  }

  void navigateBack(int numberOfPops) =>
      _navigationService.back();

}