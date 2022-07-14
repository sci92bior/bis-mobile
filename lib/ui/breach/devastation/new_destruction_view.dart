import 'dart:ffi';
import 'dart:io';

import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/composition_item.dart';
import 'package:bis/ui/dumb_widgets/process_item.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:bis/generated/l10n.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'new_destruction_viewmodel.dart';

class NewDestructionView extends StatefulWidget {
  final Destruction? destruction;
  final bool isUpdate;

  const NewDestructionView({Key? key, this.destruction, required this.isUpdate})
      : super(key: key);

  @override
  _NewDestructionViewState createState() => _NewDestructionViewState();
}

class _NewDestructionViewState extends State<NewDestructionView> {
  Future<Null> _selectDate(
      BuildContext context, NewDestructionViewModel viewModel) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: viewModel.date,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      viewModel.setDate(picked);
      setState(() {});
    }
  }

  void _addProcessItem(NewDestructionViewModel viewModel) {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              clipBehavior: Clip.hardEdge,
              child: SingleChildScrollView(
                  child: Container(
                      height: 400,
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              const SizedBox(height: 15),
                              TextFormField(
                                controller: viewModel.processTitleController,
                                decoration: InputDecoration(
                                  labelText: I10n.of(context).title,
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
                                controller: viewModel.processTimeController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  suffix: BoxText.body("min."),
                                  suffixIcon: Icon(Icons.timer),
                                  labelText: I10n.of(context).time,
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
                                maxLines: 4,
                                controller:
                                    viewModel.processDescriptionController,
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
                              BoxButton(
                                title: I10n.of(context).add,
                                onTap: () {
                                  viewModel.addProcessItem();
                                },
                              )
                            ],
                          )))));
        });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewDestructionViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.initialise(widget.destruction, widget.isUpdate);
      },
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(I10n.of(context).destruction),
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
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: I10n.of(context).workType,
                          icon: const Icon(Icons.help),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                        ),
                        value: viewModel.getWorkType,
                        onChanged: (value) {
                          viewModel.setCurrentWorkType(value!);
                        },
                        items: viewModel
                            .getWorkTypeList()
                            .map(
                              (value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: viewModel.performerController,
                        enabled: widget.isUpdate ? false : true,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).performer,
                          icon: const Icon(Icons.person),
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
                        maxLines: 8,
                        keyboardType: TextInputType.multiline,
                        controller: viewModel.descriptionController,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).description,
                          icon: const Icon(Icons.format_align_justify),
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
                        keyboardType: TextInputType.text,
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
                      TextFormField(
                        keyboardType: TextInputType.text,
                        readOnly: true,
                        controller: viewModel.dateController,
                        onTap: () {
                          _selectDate(context, viewModel);
                        },
                        decoration: InputDecoration(
                          labelText: I10n.of(context).date,
                          icon: const Icon(Icons.calendar_today_rounded),
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
                            flex: 6,
                            child: DropdownSearch<Obstacle>(
                                mode: Mode.BOTTOM_SHEET,
                                /*dropdownSearchDecoration: InputDecoration(
                            labelText: I10n.of(context).explosiveUnit
                          ),*/
                                label: I10n.of(context).obstacle,
                                //showSelectedItems: true,
                                showSearchBox: true,
                                showClearButton: true,
                                itemAsString: (item) {
                                  return item!.name;
                                },
                                items: viewModel.getObstacleList(),
                                onChanged: (value) {
                                  viewModel.chosenObstacle = value;
                                },
                                popupItemDisabled: (Obstacle s) =>
                                    s.name.startsWith('I'),
                                selectedItem: viewModel.chosenObstacle),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: viewModel.navigateToRapidObstacle,
                          ))
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: DropdownSearch<ExplosiveUnit>(
                                mode: Mode.BOTTOM_SHEET,
                                /*dropdownSearchDecoration: InputDecoration(
                            labelText: I10n.of(context).explosiveUnit
                          ),*/
                                label: I10n.of(context).explosiveUnit,
                                //showSelectedItems: true,
                                showSearchBox: true,
                                showClearButton: true,
                                itemAsString: (item) {
                                  return item!.name;
                                },
                                items: viewModel.getExplosiveUnitList(),
                                onChanged: (value) {
                                  viewModel.setExplosionUnit(value);
                                },
                                popupItemDisabled: (ExplosiveUnit s) =>
                                    s.name.startsWith('I'),
                                selectedItem: viewModel.chosenExplosiveUnit),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: viewModel.navigateToRapidExplosionUnit,
                          ))
                        ],
                      ),
                      const SizedBox(height: 10),
                      (viewModel.chosenExplosiveUnit != null)
                          ? DropdownSearch<ExpectedBehaviour>(
                              mode: Mode.BOTTOM_SHEET,
                              label: I10n.of(context).expectedBehaviour,
                              showSearchBox: true,
                              showClearButton: true,
                              itemAsString: (item) {
                                return item!.name;
                              },
                              items: viewModel.getExpectedBehaviours(),
                              onChanged: (value) {
                                viewModel.chosenExpectedBehaviour = value;
                              },
                              popupItemDisabled: (ExpectedBehaviour s) =>
                                  s.name.startsWith('I'),
                              selectedItem: viewModel.chosenExpectedBehaviour)
                          : const SizedBox(height: 1),
                      const SizedBox(height: 15),
                      DropdownSearch<InitiationSystem>(
                          mode: Mode.BOTTOM_SHEET,
                          label: I10n.of(context).initialSystems,
                          //showSelectedItems: true,
                          showSearchBox: true,
                          showClearButton: true,
                          itemAsString: (item) {
                            return item!.name;
                          },
                          items: viewModel.getInitiationSystemList(),
                          onChanged: (value) {
                            viewModel.chosenInitiationSystem = value;
                          },
                          popupItemDisabled: (InitiationSystem s) =>
                              s.name.startsWith('I'),
                          selectedItem: viewModel.chosenInitiationSystem),
                      const SizedBox(height: 15),
                      DropdownSearch<Gun>(
                          mode: Mode.BOTTOM_SHEET,
                          label: I10n.of(context).gun,
                          showSearchBox: true,
                          showClearButton: true,
                          itemAsString: (item) {
                            return item!.name;
                          },
                          items: viewModel.getGunsList(),
                          onChanged: (value) {
                            viewModel.chosenGun = value;
                          },
                          popupItemDisabled: (Gun s) => s.name.startsWith('I'),
                          selectedItem: viewModel.chosenGun),
                      const SizedBox(height: 15),
                      DropdownSearch<Tool>(
                          mode: Mode.BOTTOM_SHEET,
                          label: I10n.of(context).tools,
                          showSearchBox: true,
                          showClearButton: true,
                          itemAsString: (item) {
                            return item!.name;
                          },
                          items: viewModel.getToolsList(),
                          onChanged: (value) {
                            viewModel.chosenTool = value;
                          },
                          popupItemDisabled: (Tool s) => s.name.startsWith('I'),
                          selectedItem: viewModel.chosenTool),
                      const SizedBox(height: 15),
                      DropdownSearch<MountType>(
                          mode: Mode.BOTTOM_SHEET,
                          label: I10n.of(context).mountType,
                          showSearchBox: true,
                          showClearButton: true,
                          itemAsString: (item) {
                            return item!.name;
                          },
                          items: viewModel.getMountTypeList(),
                          onChanged: (value) {
                            viewModel.chosenMountType = value;
                          },
                          popupItemDisabled: (MountType s) =>
                              s.name.startsWith('I'),
                          selectedItem: viewModel.chosenMountType),
                      const SizedBox(height: 15),
                      DropdownSearch<ExpectedEffect>(
                          mode: Mode.BOTTOM_SHEET,
                          label: I10n.of(context).expectedEffect,
                          showSearchBox: true,
                          showClearButton: true,
                          itemAsString: (item) {
                            return item!.name;
                          },
                          items: viewModel.getExpectedEffectList(),
                          onChanged: (value) {
                            viewModel.chosenExpectedEffect = value;
                          },
                          popupItemDisabled: (ExpectedEffect s) =>
                              s.name.startsWith('I'),
                          selectedItem: viewModel.chosenExpectedEffect),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: BoxText.body(I10n.of(context).seal)),
                          Expanded(
                              flex: 3,
                              child: Slider(
                                min: 0.0,
                                max: 100.0,
                                value: viewModel.seal,
                                divisions: 100,
                                label: '${viewModel.seal}',
                                onChanged: (value) {
                                  setState(() {
                                    viewModel.seal = value;
                                  });
                                },
                              )),
                          Expanded(
                              child: BoxText.body(
                            viewModel.seal.toStringAsFixed(0),
                            color: Colors.white,
                          ))
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                              child: BoxText.body(I10n.of(context).twoStage)),
                          RollingSwitch.icon(
                            onChanged: (bool state) {
                              viewModel.setTwoStage(state);
                            },
                            initialState: viewModel.twoStage,
                            rollingInfoRight: RollingIconInfo(
                              icon: Icons.thumb_up,
                              text: Text(I10n.of(context).yes),
                            ),
                            rollingInfoLeft: RollingIconInfo(
                              icon: Icons.thumb_down,
                              //backgroundColor: Colors.blue,
                              text: Text(I10n.of(context).no),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      (viewModel.twoStage)
                          ? Column(
                              children: [
                                DropdownSearch<ExplosiveUnit>(
                                    mode: Mode.BOTTOM_SHEET,
                                    label: I10n.of(context).explosiveUnit,
                                    showSearchBox: true,
                                    showClearButton: true,
                                    itemAsString: (item) {
                                      return item!.name;
                                    },
                                    items: viewModel.getExplosiveUnitList(),
                                    onChanged: (value) {
                                      viewModel.secondChosenExplosiveUnit =
                                          value;
                                    },
                                    popupItemDisabled: (ExplosiveUnit s) =>
                                        s.name.startsWith('I'),
                                    selectedItem:
                                        viewModel.secondChosenExplosiveUnit),
                                const SizedBox(height: 15),
                                DropdownSearch<InitiationSystem>(
                                    mode: Mode.BOTTOM_SHEET,
                                    label: I10n.of(context).initialSystems,
                                    showSearchBox: true,
                                    showClearButton: true,
                                    itemAsString: (item) {
                                      return item!.name;
                                    },
                                    items: viewModel.getInitiationSystemList(),
                                    onChanged: (value) {
                                      viewModel.secondChosenInitiationSystem =
                                          value;
                                    },
                                    popupItemDisabled: (InitiationSystem s) =>
                                        s.name.startsWith('I'),
                                    selectedItem:
                                        viewModel.secondChosenInitiationSystem),
                                const SizedBox(height: 15),
                                DropdownSearch<Gun>(
                                    mode: Mode.BOTTOM_SHEET,
                                    label: I10n.of(context).gun,
                                    showSearchBox: true,
                                    showClearButton: true,
                                    itemAsString: (item) {
                                      return item!.name;
                                    },
                                    items: viewModel.getGunsList(),
                                    onChanged: (value) {
                                      viewModel.secondChosenGun = value;
                                    },
                                    popupItemDisabled: (Gun s) =>
                                        s.name.startsWith('I'),
                                    selectedItem: viewModel.secondChosenGun),
                                const SizedBox(height: 15),
                                DropdownSearch<Tool>(
                                    mode: Mode.BOTTOM_SHEET,
                                    label: I10n.of(context).tools,
                                    showSearchBox: true,
                                    showClearButton: true,
                                    itemAsString: (item) {
                                      return item!.name;
                                    },
                                    items: viewModel.getToolsList(),
                                    onChanged: (value) {
                                      viewModel.secondChosenTool = value;
                                    },
                                    popupItemDisabled: (Tool s) =>
                                        s.name.startsWith('I'),
                                    selectedItem: viewModel.secondChosenTool),
                              ],
                            )
                          : const SizedBox(height: 1),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                              child:
                              BoxText.headingOne(I10n.of(context).result)),
                          RollingSwitch.icon(
                            onChanged: (bool state) {
                              viewModel.setResult(state);
                              print(state);
                            },
                            initialState: viewModel.isGood,
                            rollingInfoRight: const RollingIconInfo(
                              icon: Icons.check,
                              text: Text("GO!"),
                            ),
                            rollingInfoLeft: const RollingIconInfo(
                              icon: Icons.close,
                              backgroundColor: Colors.red,
                              text: Text('NO GO!'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(children: [
                        Expanded(
                            flex: 3,
                            child:
                                BoxText.headingThree(I10n.of(context).process)),
                        Expanded(
                            child: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            _addProcessItem(viewModel);
                          },
                        ))
                      ]),
                      Divider(),
                      viewModel.process.isEmpty
                          ? Center(
                              child: Text(
                                  I10n.of(context).addProcessItem))
                          : ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              padding: EdgeInsets.all(10),
                              itemCount: viewModel.process.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                final ProcessItem event =
                                    viewModel.process[index];

                                final child = ProcessTimelineChild(
                                  title: event.title,
                                  subtitle: event.description,
                                  onRemoveButtonTapped: () {
                                    viewModel.deleteProcessItem(index);
                                  },
                                );

                                return TimelineTile(
                                  alignment: TimelineAlign.start,
                                  endChild: child,
                                  indicatorStyle: IndicatorStyle(
                                    width: 60,
                                    height: 60,
                                    indicator: ProcessTimelineIndicator(
                                        time: "${event.time.toStringAsFixed(0)} min"),
                                    drawGap: true,
                                  ),
                                  beforeLineStyle: LineStyle(
                                    color: Colors.white.withOpacity(0.2),
                                    thickness: 3,
                                  ),
                                );
                              }),
                      const SizedBox(height: 15),
                      Row(children: [
                        Expanded(
                            flex: 3,
                            child: BoxText.headingThree(
                                I10n.of(context).photosBeforeDestruction)),
                        Expanded(
                            child: IconButton(
                          icon: const Icon(Icons.photo_sharp),
                          onPressed: () {
                            viewModel.selectImage(
                                fromGallery: true, isBefore: true);
                          },
                        )),
                        Expanded(
                            child: IconButton(
                          icon: const Icon(Icons.camera_alt),
                          onPressed: () {
                            viewModel.selectImage(
                                fromGallery: false, isBefore: true);
                          },
                        ))
                      ]),
                      const Divider(),
                      viewModel.photosBefore.isEmpty
                          ? Center(
                              child: Text(
                                  I10n.of(context).addPhotoBeforeDestruction))
                          : Container(
                              margin: EdgeInsets.all(10),
                              child:
                                  Wrap(spacing: 20, runSpacing: 20, children: [
                                for (var i = 0;
                                    i < viewModel.photosBefore.length;
                                    i++)
                                  Container(
                                      width: 150,
                                      child: Stack(children: [
                                        FullScreenWidget(
                                          child: Hero(
                                            tag: "Hero $i a",
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.file(
                                                  File(viewModel
                                                      .photosBefore[i].path),
                                                  width: 150,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.delete_forever),
                                              onPressed: () {
                                                viewModel.deletePhotosBefore(i);
                                              },
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.edit),
                                              onPressed: () {
                                                viewModel.addDescriptionToPhoto(
                                                    i, true);
                                              },
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.crop),
                                              onPressed: () {
                                                viewModel.cropImage(i, false);
                                              },
                                            )
                                          ],
                                        )
                                      ]))
                              ])),

                      const SizedBox(height: 15),
                      Row(children: [
                        Expanded(
                            flex: 3,
                            child: BoxText.headingThree(
                                I10n.of(context).photosAfterDestruction)),
                        Expanded(
                            child: IconButton(
                          icon: const Icon(Icons.photo_sharp),
                          onPressed: () {
                            viewModel.selectImage(
                                fromGallery: true, isBefore: false);
                          },
                        )),
                        Expanded(
                            child: IconButton(
                          icon: const Icon(Icons.camera_alt),
                          onPressed: () {
                            viewModel.selectImage(
                                fromGallery: false, isBefore: false);
                          },
                        ))
                      ]),
                      const Divider(),
                      viewModel.photosAfter.isEmpty
                          ? Center(
                              child: Text(
                                  I10n.of(context).addPhotoAfterDestruction))
                          : Container(
                              margin: const EdgeInsets.all(10),
                              child:
                                  Wrap(spacing: 10, runSpacing: 10, children: [
                                for (var i = 0;
                                    i < viewModel.photosAfter.length;
                                    i++)
                                  Container(
                                      width: 150,
                                      child: Stack(children: [
                                        FullScreenWidget(
                                          child: Hero(
                                            tag: "Hero $i b",
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.file(
                                                  File(viewModel
                                                      .photosAfter[i].path),
                                                  width: 150,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.delete_forever),
                                              onPressed: () {
                                                viewModel.deletePhotosAfter(i);
                                              },
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.edit),
                                              onPressed: () {
                                                viewModel.addDescriptionToPhoto(
                                                    i, false);
                                              },
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.crop),
                                              onPressed: () {
                                                viewModel.cropImage(i, true);
                                              },
                                            )
                                          ],
                                        )
                                      ]))
                              ])),
                      const SizedBox(height: 15),
                      TextFormField(
                        maxLines: 8,
                        keyboardType: TextInputType.multiline,
                        controller: viewModel.recomendationController,
                        decoration: InputDecoration(
                          labelText: I10n.of(context).recomendation,
                          icon: const Icon(Icons.format_align_justify),
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                      const SizedBox(height: 15),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),

                itemBuilder: (context, _) => Icon(
                  Icons.local_fire_department,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
                      /*   viewModel.photos.isEmpty ? Center(child:Text(I10n.of(context).addNewPhotoOfObstacle)): Container(
                            margin: EdgeInsets.all(10),
                            child: Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                for (var i = 0; i < viewModel.photos.length; i++)
                                  Stack(children:[
                                    FullScreenWidget(
                                      child: Hero(
                                        tag: "Hero $i",
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(16),
                                            child: Image.file(
                                              File(viewModel.photos[i]),
                                              width: 150,
                                              height: 150,
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),IconButton(icon: Icon(Icons.delete_forever),onPressed: () { viewModel.deletePhoto(i);},)])
                              ],
                            ),
                          ),*/
                    ],
                  )),
            )),
          )),
      viewModelBuilder: () => NewDestructionViewModel(),
    );
  }
}
