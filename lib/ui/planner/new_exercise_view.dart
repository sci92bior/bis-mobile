import 'dart:ffi';
import 'dart:io';

import 'package:awesome_select/awesome_select.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/composition_item.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:bis/generated/l10n.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'new_exercise_viewmodel.dart';

// #2: with $ExampleFormView

class NewExerciseView extends StatefulWidget {
  final Exercise? exercise;
  final bool isUpdate;
  const NewExerciseView({Key? key, this.exercise, required this.isUpdate}) : super(key: key);

  @override
  _NewExerciseViewState createState() => _NewExerciseViewState();
}

class _NewExerciseViewState extends State<NewExerciseView> {

  @override
  Widget build(BuildContext context) {
    Future<Null> _selectDateRange(
        BuildContext context, NewExerciseViewModel viewModel) async {
      final DateTimeRange? picked = await showDateRangePicker(
          context: context,

          firstDate: DateTime(2015),
          lastDate: DateTime(2101));
      if (picked != null) {
        viewModel.setDateRange(picked);
        setState(() {});
      }
    }

    return ViewModelBuilder<NewExerciseViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.initialise(widget.exercise, widget.isUpdate);
      },
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(I10n.of(context).exercise),
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
                viewModel.saveData(widget.isUpdate);
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
                            enabled: widget.isUpdate ? false : true,
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
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            controller: viewModel.placeController,
                            decoration: InputDecoration(
                              labelText: I10n.of(context).place,
                              icon: const Icon(Icons.map),
                              fillColor: Colors.white,

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(children: [
                          Expanded(child: TextFormField(
                            keyboardType: TextInputType.text,
                            readOnly: true,
                            controller: viewModel.startDateController,
                            onTap: () {
                              _selectDateRange(context, viewModel);
                            },
                            decoration: InputDecoration(
                              labelText: I10n.of(context).startDate,
                              icon: Icon(Icons.calendar_today),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),),
                            horizontalSpaceMedium,
                            Expanded(child: TextFormField(
                              keyboardType: TextInputType.text,
                              readOnly: true,

                              controller: viewModel.stopDateController,
                              onTap: () {
                                _selectDateRange(context, viewModel);
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: I10n.of(context).endDate,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),)],),

                          SmartSelect<String>.multiple(
                            title: I10n.of(context).plannedElements,
                            placeholder: I10n.of(context).choseOneOrMore,
                            selectedValue: viewModel.currentChosenDatabaseItemsString,
                            onChange: (selected) => setState((){viewModel.setCurrentList(selected?.value);}),
                            choiceItems: S2Choice.listFrom<String, DatabaseItem>(
                              source: viewModel.databaseItems!,
                              value: (index, item) => item.itemName,
                              title: (index, item) => item.itemName ,
                              group: (index, item) => item.itemType.name,
                            ),
                            choiceActiveStyle: const S2ChoiceStyle(color: Colors.redAccent),
                            modalType: S2ModalType.bottomSheet,
                            modalConfirm: true,
                            modalFilter: true,
                            groupEnabled: true,
                            groupSortBy: S2GroupSort.byNameInAsc(),
                            groupBuilder: (context, state, group) {
                              return StickyHeader(

                                header: state.groupHeader(group),
                                content: state.groupChoices(group),
                              );
                            },
                            groupHeaderBuilder: (context, state, group) {
                              return Container(
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.centerLeft,
                                color: Colors.grey,
                                child: S2Text(
                                  text: group.name,
                                  highlight: state.filter?.value,
                                  highlightColor: Colors.teal,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            },
                            tileBuilder: (context, state) {
                              return S2Tile.fromState(
                                state,
                                isTwoLine: true,
                                leading: Icon(FontAwesomeIcons.database),
                              );
                            },
                          ),
                          Divider(),
                          GroupedListView<DatabaseItem, String>(
                            groupBy: (element) => element.itemType.name,
                            elements: viewModel.currentChosenDatabaseItems!,
                            groupSeparatorBuilder: (String groupByValue) {
                              return Container(
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.centerLeft,
                                color: Colors.grey,
                                child: S2Text(
                                  text: groupByValue,
                                  highlightColor: Colors.teal,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            },
                            itemComparator: (item1, item2) => item1.itemName.compareTo(item2.itemName),
                            useStickyGroupSeparators: true,
                            floatingHeader: true,
                            order: GroupedListOrder.ASC,
                            shrinkWrap: true,
                            itemBuilder: (ctx, item) {
                              var controller = TextEditingController();
                              if(item.quantity!=null){
                                controller.text = item.quantity.toString();
                              }
                              return Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 4,
                                          child: Text(item.itemName)),
                                      horizontalSpaceSmall,
                                      Expanded(
                                        flex: 3,
                                        child: TextFormField(
                                            controller: controller,
                                            keyboardType:
                                            const TextInputType.numberWithOptions(decimal: true),
                                            onEditingComplete: () {
                                              viewModel.updateQuantity(item, double.parse(controller.text));
                                            },
                                            decoration: InputDecoration(
                                              labelText: I10n.of(context).quantity,
                                              suffix: item.suffix !=null ? Text(item.suffix!) : null,
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(25.0),
                                                borderSide: const BorderSide(),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ));
                            },
                          ),
                        ],
                      )),
                )),
          )),
      viewModelBuilder: () => NewExerciseViewModel(),
    );
  }
}

