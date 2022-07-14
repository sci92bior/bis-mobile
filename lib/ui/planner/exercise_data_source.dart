import 'dart:ui';

import 'package:bis/models/application_models.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ExercisesDataSource extends CalendarDataSource {
  ExercisesDataSource(List<Exercise> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].start;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].stop;
  }

  @override
  String getSubject(int index) {
    return appointments![index].name;
  }

  @override
  Color getColor(int index) {
    return Colors.primaries[appointments![index].color];
  }

  @override
  bool isAllDay(int index) {
    return true;
  }
}

