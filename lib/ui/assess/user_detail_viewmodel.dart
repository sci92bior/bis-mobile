import 'dart:convert';

import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/course/course_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UserDetailViewModel extends BaseViewModel{

  final log = getLogger('CourseDetailViewModel');
  final _navigationService= locator<NavigationService>();
  final _courseService = locator<CourseService>();

  final name = TextEditingController();
  final startDate = TextEditingController();
  final endDate = TextEditingController();
  final update = TextEditingController();
  final instructor = TextEditingController();
  final markDescriptionController = TextEditingController();

  late User currentUser;
  late Course currentCourse;
  late List<Course> courses;
  late List<CourseMark> marks;

  void initialise(User user, Course course){
    currentUser = user;
    currentCourse = course;
    courses = _courseService.findCoursesByUser(currentUser);
    marks = _getMarks();
  }

  List<CourseMark> _getMarks(){
    return currentCourse.courseMarks.where((element) => element.student==currentUser).toList();
  }

}