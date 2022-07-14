import 'dart:io';
import 'dart:math';

import 'package:bis/models/application_models.dart';
import 'package:bis/ui/assess/user_detail_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class UserDetailView extends StatefulWidget {
  final User user;
  final Course course;

  const UserDetailView({Key? key, required this.user, required this.course}) : super(key: key);

  @override
  _UserDetailViewState createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserDetailViewModel>.reactive(
        viewModelBuilder: () => UserDetailViewModel(),
        onModelReady: (viewModel) {
          viewModel.initialise(widget.user, widget.course);
        },
        builder: (context, viewModel, _) => Scaffold(
            floatingActionButton:
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            ]),
            appBar: AppBar(
              title: Text(widget.user.displayName!),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(children: [
                     /* BoxText.subheading(I10n.of(context).courses),
                      const SizedBox(height: 15),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: viewModel.courses.length,
                          itemBuilder: (ctx, idx) {
                            return DatabaseListItem(
                              name: viewModel.courses[idx].name,
                            );
                          }),
                      const SizedBox(height: 15),*/
                      BoxText.subheading(I10n.of(context).marks),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: viewModel.marks.length,
                          itemBuilder: (ctx, idx) {
                            return Card(
                                color: Colors.white12,
                                elevation: 2.0,
                                child: Center(
                                child: Padding(
                                padding: EdgeInsets.all(3.0),
                            child: Container(
                            height: 150,
                            child : SingleChildScrollView(child: Row(
                              children: [
                                Expanded(flex: 3,child:Column(
                                  children: [
                                    BoxText.subheading(viewModel.marks[idx].topicName),
                                    BoxText.body(DateFormat.yMMMd().format(viewModel.marks[idx].timestamp)),
                                    Divider(),
                                    BoxText.body(viewModel.marks[idx].description)
                                  ],
                                )),
                                Expanded(child: Icon(viewModel.marks[idx].mark ? Icons.thumb_up : Icons.thumb_down, color: viewModel.marks[idx].mark ? Colors.green : Colors.red,))
                              ],
                            )
                            )))));
                          }),
                    ])))));
  }
}
