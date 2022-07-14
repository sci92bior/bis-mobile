

import 'package:bis/ui/assess/assess_viewmodel.dart';
import 'package:bis/ui/database/database_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class AssessView extends StatelessWidget {
  const AssessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssessVIewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: viewModel.navigateToNewCourseForm,),
          body: Center(
              child: viewModel.isBusy
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                itemBuilder: (ctx, idx) {
                  return DatabaseListItem(
                      name: viewModel.savedCourses[idx].name,
                      trailingIcon: Icons.chevron_right,
                      subString: "START: ${viewModel.savedCourses[idx].startDate.year}-${viewModel.savedCourses[idx].startDate.month}-${viewModel.savedCourses[idx].startDate.day} STOP: ${viewModel.savedCourses[idx].endDate.year}-${viewModel.savedCourses[idx].endDate.month}-${viewModel.savedCourses[idx].endDate.day} ",
                      onTap: () {
                        viewModel.navigateToCourseDetail(viewModel.savedCourses[idx]);
                      });
                },
                itemCount: viewModel.savedCourses.length,
              ))),
      viewModelBuilder: () => AssessVIewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}

