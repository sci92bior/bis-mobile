import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/database/database_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:bis/ui/planner/planner_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'exercise_data_source.dart';

class PlannerView extends StatefulWidget {
  const PlannerView({Key? key}) : super(key: key);

  @override
  _PlannerViewState createState() => _PlannerViewState();
}

class _PlannerViewState extends State<PlannerView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PlannerViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
          floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            FloatingActionButton(
              onPressed: () {
                viewModel.navigateToNewExercise();
              },
              heroTag: "1",
              child: Icon(Icons.add),
            ),
            verticalSpaceSmall,
            FloatingActionButton(
              heroTag: "2",
              onPressed: () {
                viewModel.initialise();
              },
              child: Icon(Icons.sync),
            ),
            verticalSpaceSmall,
            FloatingActionButton(
              heroTag: "3",
              onPressed: () {
                viewModel.navigateToCalculateRange();
              },
              child: Icon(Icons.date_range),
            ),
          ],),
          body: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: SfCalendar(
                      view: CalendarView.month,
                      showNavigationArrow: true,
                      firstDayOfWeek: 1,
                      onTap: (CalendarTapDetails details) {
                        viewModel.setCurrentMeetings(details.appointments!);
                        CalendarElement view = details.targetElement;
                      },
                      dataSource: ExercisesDataSource(viewModel.meetings),
                      monthViewSettings: const MonthViewSettings(
                          appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                    ),
                  ),
                    Expanded(

                        child:
                        ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (ctx, idx) {
                            return Dismissible(
                                key: Key(DateTime.now().toString()),
                                onDismissed: (direction) {
                                  setState(() {
                                    viewModel.deleteFromList(idx);
                                  });
                                },
                                background: Container(
                                  color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        const Icon(Icons.delete,
                                            color: Colors.white),
                                        Text(I10n.of(context).delete,
                                            style: const TextStyle(
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                                child:Card(
                                    child: ListTile(
                                        tileColor: Colors
                                            .primaries[viewModel.currentMeetings[idx].color],
                                        subtitle: Text("${viewModel.currentMeetings[idx].start} - ${viewModel.currentMeetings[idx].stop}"),
                                        title: Text(viewModel.currentMeetings[idx].name),
                                        onTap: () {viewModel.navigateToExerciseDetail(viewModel.currentMeetings[idx]);})));
                          },
                          itemCount: viewModel.currentMeetings.length,

                  )
                    )
                ],
              ))),
      viewModelBuilder: () => PlannerViewModel(),
      onModelReady: (viewModel) {
        viewModel.initialise();
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}


