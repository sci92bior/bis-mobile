import 'dart:ffi';
import 'dart:io';

import 'package:awesome_select/awesome_select.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/composition_item.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:bis/generated/l10n.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'new_course_viewmodel.dart';

// #2: with $ExampleFormView

class NewCourseView extends StatefulWidget {
  const NewCourseView({Key? key}) : super(key: key);

  @override
  _NewCourseViewState createState() => _NewCourseViewState();
}

class _NewCourseViewState extends State<NewCourseView> {
  @override
  Widget build(BuildContext context) {
    Future<Null> _selectDateRange(
        BuildContext context, NewCourseViewModel viewModel) async {
      final DateTimeRange? picked = await showDateRangePicker(
          context: context,
          firstDate: DateTime(2015),
          lastDate: DateTime(2101));
      if (picked != null) {
        viewModel.setDateRange(picked);
        setState(() {});
      }
    }

    return ViewModelBuilder<NewCourseViewModel>.reactive(
      onModelReady: (viewModel) {
        //viewModel.initialise(widget.exercise, widget.isUpdate);
      },
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(I10n.of(context).courses),
            automaticallyImplyLeading: true,
          ),
          floatingActionButton: FloatingActionButton(
              child: viewModel.isBusy
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    )
                  : const Icon(
                      Icons.save,
                    ),
              onPressed: () {
                viewModel.saveCourse();
              }),
          body: SingleChildScrollView(
            child: Center(
                child: Form(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: viewModel.nameController,
                        //enabled: widget.isUpdate ? false : true,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).name,
                          icon: const Icon(Icons.drive_file_rename_outline),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              readOnly: true,
                              controller: viewModel.startDateController,
                              onTap: () {
                                _selectDateRange(context, viewModel);
                              },
                              decoration: InputDecoration(
                                labelText: I10n.of(context).startDate,
                                icon: const Icon(Icons.calendar_today),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                          horizontalSpaceMedium,
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              readOnly: true,
                              controller: viewModel.stopDateController,
                              onTap: () {
                                _selectDateRange(context, viewModel);
                              },
                              decoration: InputDecoration(
                                icon: const Icon(Icons.calendar_today),
                                labelText: I10n.of(context).endDate,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      DropdownSearch<User>(
                          mode: Mode.BOTTOM_SHEET,
                          label: I10n.of(context).instructor,
                          showSearchBox: true,
                          showClearButton: true,
                          itemAsString: (item) {
                            return item!.displayName!;
                          },
                          items: viewModel.getAllInstructors(),
                          onChanged: (value) {
                            viewModel.chosenInstructor = value;
                          },
                          popupItemDisabled: (User s) =>
                              s.userName.startsWith('I'),
                          selectedItem: viewModel.chosenInstructor),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child:
                                BoxText.headingThree(I10n.of(context).topics),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: viewModel.addItemToList,
                          ))
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                          height: 200,
                          child: ReorderableListView(
                            children: <Widget>[
                              for (int index = 0;
                                  index < viewModel.topics.length;
                                  index += 1)
                                ListTile(
                                  key: Key('$index'),
                                  //tileColor: viewModel.items[index].isOdd ? oddItemColor : evenItemColor,
                                  leading: const Icon(Icons.drag_handle),
                                  title: TextFormField(
                                    controller: viewModel.topics[index],
                                    decoration: InputDecoration(
                                      labelText: I10n.of(context).enterTopic,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: const BorderSide(),
                                      ),
                                      //fillColor: Colors.green
                                    ),
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {
                                      viewModel.removeFromTopicList(index);
                                    },
                                  ),
                                ),
                            ],
                            onReorder: (int oldIndex, int newIndex) {
                              setState(() {
                                if (oldIndex < newIndex) {
                                  newIndex -= 1;
                                }
                                final TextEditingController item =
                                    viewModel.topics.removeAt(oldIndex);
                                viewModel.topics.insert(newIndex, item);
                              });
                            },
                          )),
                      SmartSelect<String>.multiple(
                        title: I10n.of(context).students,
                        placeholder: I10n.of(context).choseStudentsToCourse,
                        selectedValue:
                            viewModel.currentChosenDatabaseItemsString,
                        onChange: (selected) => setState(() {
                          viewModel.setCurrentList(selected?.value);
                        }),
                        choiceItems: S2Choice.listFrom<String, User>(
                          source: viewModel.getAllStudents(),
                          value: (index, item) => item.userName,
                          title: (index, item) => item.displayName!,
                        ),
                        choiceActiveStyle:
                            const S2ChoiceStyle(color: Colors.redAccent),
                        modalType: S2ModalType.bottomSheet,
                        modalConfirm: true,
                        modalFilter: true,
                        groupSortBy: S2GroupSort.byNameInAsc(),
                        tileBuilder: (context, state) {
                          return S2Tile.fromState(
                            state,
                            isTwoLine: true,
                            leading: const Icon(Icons.group_add),
                          );
                        },
                      ),
                      SizedBox(
                        child: ListView.builder(
                            itemCount: viewModel.currentChosenStudents!.length,
                            itemBuilder: (context, index) => DatabaseListItem(
                                  name: viewModel.currentChosenStudents![index]
                                      .displayName!,
                                  trailingIcon: Icons.person,
                                )),
                        height: 300,
                      )
                    ],
                  )),
            )),
          )),
      viewModelBuilder: () => NewCourseViewModel(),
    );
  }
}
