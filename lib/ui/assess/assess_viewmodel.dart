import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/services/course/course_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class AssessVIewModel extends ReactiveViewModel with WidgetsBindingObserver{

  final _navigationService = locator<NavigationService>();
  final _courseService = locator<CourseService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_courseService];

  List<Course> get savedCourses => _courseService.savedCourses;


  void navigateToNewCourseForm(){
    _navigationService.navigateTo(Routes.newCourseView);
  }

  void navigateToCourseDetail(Course course){
    _navigationService.navigateTo(Routes.courseDetailView, arguments: CourseDetailViewArguments(course: course));
  }

  Future<List<Course>> getDataFromLocalStorage() async{
    return Future.value(_courseService.savedCourses);
  }


}