import 'dart:ffi';
import 'dart:io';

import 'package:awesome_select/awesome_select.dart';
import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/composition_item.dart';
import 'package:bis/ui/planner/calculate_range_viewmodel.dart';
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

class CalculateRangeView extends StatefulWidget {
  final Exercise? exercise;
  final bool isUpdate;
  const CalculateRangeView({Key? key, this.exercise, required this.isUpdate}) : super(key: key);

  @override
  _CalculateRangeViewState createState() => _CalculateRangeViewState();
}

class _CalculateRangeViewState extends State<CalculateRangeView> {

  @override
  Widget build(BuildContext context) {
    Future<Null> _selectDateRange(
        BuildContext context, CalculateRangeViewModel viewModel) async {
      final DateTimeRange? picked = await showDateRangePicker(
          context: context,

          firstDate: DateTime(2015),
          lastDate: DateTime(2101));
      if (picked != null) {
        viewModel.setDateRange(picked);
        viewModel.calculate();
        setState(() {});
      }
    }

    return ViewModelBuilder<CalculateRangeViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.initialise(widget.exercise, widget.isUpdate);
      },
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(I10n.of(context).calculateDataRangeNeeds),
            automaticallyImplyLeading: true,
          ),
          body: SingleChildScrollView(
            child: Center(
                child: Form(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
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
                          Divider(),
                          verticalSpaceMedium,
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
                                  padding: const EdgeInsets.all(20),
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
                                            readOnly: true,
                                            keyboardType:
                                            const TextInputType.numberWithOptions(decimal: true),
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
      viewModelBuilder: () => CalculateRangeViewModel(),
    );
  }
}

