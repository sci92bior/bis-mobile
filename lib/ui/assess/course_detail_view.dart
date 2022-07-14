import 'dart:io';
import 'dart:math';

import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/assess/course_detail_viewmodel.dart';
import 'package:bis/ui/breach/explosive_unit/explosive_unit_detail_viewmodel.dart';
import 'package:bis/ui/breach/obstacle/obstacle_detail_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/process_item.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CourseDetailView extends StatefulWidget {
  final Course course;

  const CourseDetailView({Key? key, required this.course}) : super(key: key);

  @override
  _CourseDetailViewState createState() => _CourseDetailViewState();
}

class _CourseDetailViewState extends State<CourseDetailView> {
  void _showBottomSheet(
      User user, CourseDetailViewModel viewModel, bool isPlus) {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              clipBehavior: Clip.hardEdge,
              child: SingleChildScrollView(
                  child: Container(
                      height: 500,
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              BoxText.subheading(user.displayName!),
                              const SizedBox(height: 40),
                              Icon(
                                isPlus ? Icons.thumb_up : Icons.thumb_down,
                                color: isPlus ? Colors.green : Colors.red,
                                size: 60,
                              ),
                              const SizedBox(height: 40),
                              DropdownButtonFormField<Topic>(
                                decoration: InputDecoration(
                                  labelText: I10n.of(context).topics,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: const BorderSide(),
                                  ),
                                ),
                                onChanged: (value) {
                                  viewModel.setCurrentTopic(value!);
                                },
                                items: widget.course.topics
                                    .map(
                                      (value) => DropdownMenuItem<Topic>(
                                        value: value,
                                        child: Text(value.name),
                                      ),
                                    )
                                    .toList(),
                              ),
                              const SizedBox(height: 15),
                              TextFormField(
                                maxLines: 4,
                                controller: viewModel.markDescriptionController,
                                decoration: InputDecoration(
                                  labelText: I10n.of(context).description,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: const BorderSide(),
                                  ),
                                  //fillColor: Colors.green
                                ),
                              ),
                              const SizedBox(height: 15),
                              BoxButton.outline(
                                title: I10n.of(context).add,
                                onTap: () {
                                  viewModel.addMarkToUser(
                                      user,
                                      isPlus,
                                      viewModel.markDescriptionController.text,
                                      viewModel.currentTopic!);
                                },
                              )
                            ],
                          )))));
        });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CourseDetailViewModel>.reactive(
        viewModelBuilder: () => CourseDetailViewModel(),
        onModelReady: (viewModel) {
          viewModel.initialise(widget.course);
        },
        builder: (context, viewModel, _) => Scaffold(
            appBar: AppBar(
              title: Text(widget.course.name),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(children: [
                      TextFormField(
                        readOnly: true,
                        controller: viewModel.name,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).name,
                          icon: const Icon(FontAwesomeIcons.alignJustify),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      TextFormField(
                        readOnly: true,
                        controller: viewModel.instructor,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).instructor,
                          icon: const Icon(Icons.person),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      TextFormField(
                        readOnly: true,
                        controller: viewModel.startDate,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).startDate,
                          icon: const Icon(FontAwesomeIcons.calendar),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      TextFormField(
                        readOnly: true,
                        controller: viewModel.endDate,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).endDate,
                          icon: const Icon(FontAwesomeIcons.calendar),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),const SizedBox(height: 15),
                      BoxText.subheading(I10n.of(context).topics),
                      Divider(),
                       ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.all(10),
                          itemCount: widget.course.topics.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            final Topic topic =
                            widget.course.topics[index];

                            return TimelineTile(
                              alignment: TimelineAlign.start,
                              endChild: TopicTimelineChild(
                                title: topic.name,
                                subtitle: topic.endDate!=null ? DateFormat.yMd().format(topic.endDate!) : null,
                                onTapped: () {
                                  viewModel.markTopicAsDone(index);
                                },
                              ),
                              indicatorStyle: IndicatorStyle(
                                width: 30,
                                height: 30,
                                indicator: TopicTimelineIndicator(
                                    done: viewModel.currentCourse.topics[index].done),
                                drawGap: true,
                              ),
                              beforeLineStyle: LineStyle(
                                color: Colors.white.withOpacity(0.2),
                                thickness: 3,
                              ),
                            );
                          }),
                      const SizedBox(height: 15),
                      BoxText.subheading(I10n.of(context).students),
                      const SizedBox(height: 15),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: widget.course.participants.length,
                          itemBuilder: (ctx, idx) {
                            return Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Card(

                                  color: Colors.white12,
                                  elevation: 2.0,
                                  //borderRadius: BorderRadius.circular(24.0),
                                  //shadowColor: Color(0x802196F3),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child:Container(
                                        height: 100,
                                        child :( Row(children : [Expanded(child :Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: BoxText.subheading(
                                              widget.course.participants[idx]
                                                  .displayName!,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: Wrap(
                                              children: [
                                                IconButton(
                                                  icon: Icon(Icons.thumb_up,
                                                      color: Colors.green),
                                                  onPressed: () {
                                                    _showBottomSheet(
                                                        widget.course
                                                            .participants[idx],
                                                        viewModel,
                                                        true);
                                                  },
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.thumb_down,
                                                      color: Colors.red),
                                                  onPressed: () {
                                                    _showBottomSheet(
                                                        widget.course
                                                            .participants[idx],
                                                        viewModel,
                                                        false);
                                                  },

                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.details),
                                                  onPressed: () {
                                                    viewModel.navigateToCourseDetail(widget.course
                                                        .participants[idx]);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(height: 10),
                                        ],
                                      )),
                                        Expanded(child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: SizedBox(
                                              height: 90,
                                              //width: screenWidth(context) - 150,
                                              child: /*LineChart(LineChartData(
                                                  gridData: FlGridData(
                                                    drawHorizontalLine: false,
                                                    drawVerticalLine: false,
                                                    horizontalInterval: 2,
                                                    verticalInterval: 2,
                                                  ),
                                                  borderData:
                                                      FlBorderData(show: false),
                                                  minX: 0,
                                                  maxX: 4,
                                                  minY: -100,
                                                  maxY: 100,
                                                  titlesData: FlTitlesData(
                                                    show: false,
                                                  ),
                                                  lineBarsData: [
                                                    LineChartBarData(
                                                      spots: viewModel.calculateDataGraph(widget.course
                                                          .participants[idx]),
                                                      isCurved: true,
                                                      dotData: FlDotData(
                                                        show: false,
                                                      ),
                                                      gradient: LinearGradient(
                                                        colors: viewModel
                                                            .gradientColors,
                                                        begin:
                                                            Alignment.topCenter,

                                                        end: Alignment
                                                            .bottomCenter,
                                                      ),
                                                      isStrokeCapRound: false,
                                                    ),
                                                  ],
                                                )),*/
                                              BarChart(BarChartData(

                                                titlesData: FlTitlesData(
                                                  show: true,
                                                  rightTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                        showTitles: false),
                                                  ),
                                                  topTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                        showTitles: false,
                                                      reservedSize: 0
                                                    ),
                                                  ),
                                                  bottomTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: false,
                                                      getTitlesWidget:
                                                      viewModel.getTitles,
                                                      reservedSize: 10,
                                                    ),
                                                  ),
                                                  leftTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: false,
                                                    ),
                                                  ),
                                                ),
                                                borderData: FlBorderData(
                                                  show: false,
                                                ),
                                                barGroups: List.generate(2, (i) {
                                                  switch (i) {
                                                    case 0:
                                                      return viewModel.makeGroupData(0, viewModel.calculatePluses(widget.course.participants[idx]).toDouble(),
                                                          barColor: Colors.green);
                                                    case 1:
                                                      return viewModel.makeGroupData(1, viewModel.calculateMinuses(widget.course.participants[idx]).toDouble(),
                                                          barColor: Colors.red);

                                                    default:
                                                      return throw Error();
                                                  }
                                                }),
                                                gridData:
                                                FlGridData(show: false),
                                              ))),
                                        )),
                                      ]
                                      )
                                    ),
                                  ),
                                ))));

                            /*Card(
                                    child: ListTile(
                                      onTap: viewModel.navigateToChart,
                                      title: Text(widget
                                          .course
                                          .participants[idx]
                                          .displayName!),
                                      trailing:
                                      Wrap(children: [
                                        IconButton(icon: Icon(Icons.thumb_up,color: Colors.green), onPressed: (){_showBottomSheet(widget
                                            .course
                                            .participants[idx], viewModel, true);},),
                                        IconButton(icon: Icon(Icons.thumb_down,color: Colors.red), onPressed: (){_showBottomSheet(widget
                                            .course
                                            .participants[idx], viewModel, false);},)
                                      ],),
                                    )

                                );*/
                          }),
                    ])))));
  }
}
