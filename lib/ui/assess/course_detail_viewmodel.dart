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
import 'package:intl/intl.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseDetailViewModel extends BaseViewModel{

  final log = getLogger('CourseDetailViewModel');
  final _navigationService= locator<NavigationService>();
  final _courseService = locator<CourseService>();

  final name = TextEditingController();
  final startDate = TextEditingController();
  final endDate = TextEditingController();
  final update = TextEditingController();
  final instructor = TextEditingController();
  final markDescriptionController = TextEditingController();

  Topic? currentTopic;

  late Course currentCourse;

  List<Color> gradientColors = [
    const Color(0xff02d39a),
    const Color(0xffe62323),
  ];

  bool updateView = false;

  void changeToUpdateView(){
    print(updateView);
    updateView = true;
    notifyListeners();
  }
  void initialise(Course course){
    currentCourse = course;
    name.text = course.name;
    startDate.text = DateFormat.yMMMd().format(course.startDate);
    endDate.text = DateFormat.yMMMd().format(course.endDate);
    instructor.text = course.courseLeader.displayName!;
  }

  void setCurrentTopic(Topic topic){
    currentTopic = topic;
  }

  int calculatePluses(User user){
    return currentCourse.courseMarks.where((element) => (element.student==user && element.mark)).length;
  }

  int calculateMinuses(User user){
    return currentCourse.courseMarks.where((element) => (element.student==user && !element.mark)).length;
  }

  void addMarkToUser(User user, bool isGood, String description, Topic topic){
    var mark = CourseMark(description: description, topicName: topic.name, student: user, mark: isGood, timestamp: DateTime.now());
    currentCourse.courseMarks.add(mark);
    _courseService.updateInDatabase(currentCourse);
    markDescriptionController.clear();
    notifyListeners();
    _navigationService.popRepeated(1);
  }

  void markTopicAsDone(int index){
    var newTopic = currentCourse.topics[index].copyWith(done: !currentCourse.topics[index].done, endDate: currentCourse.topics[index].done ? null:DateTime.now());
    currentCourse.topics.removeAt(index);
    currentCourse.topics.insert(index, newTopic);
    _courseService.updateInDatabase(currentCourse);
    notifyListeners();
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget icon;
    switch (value.toInt()) {
      case 0:
        icon = const Icon(Icons.thumb_up, color: Colors.green,);
        break;
      case 1:
        icon = const Icon(Icons.thumb_down, color: Colors.red,);
        break;
      default:
        icon = const Text('', style: style);
        break;
    }
    return Padding(padding: const EdgeInsets.only(top: 16), child: icon);
  }

  BarChartGroupData makeGroupData(
      int x,
      double y, {
        bool isTouched = false,
        Color barColor = Colors.white,
        double width = 15,
        List<int> showTooltips = const [],
      }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? Colors.yellow : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: Colors.yellow.shade50, width: 1)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 1,
            color: Colors.black12,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }
  void navigateToCourseDetail(User user){
    _navigationService.navigateTo(Routes.userDetailView, arguments: UserDetailViewArguments(user: user, course : currentCourse));
  }

}