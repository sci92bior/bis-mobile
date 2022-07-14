import 'dart:io';
import 'dart:math';

import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/breach/devastation/destruction_detail_viewmodel.dart';
import 'package:bis/ui/breach/explosive_unit/explosive_unit_detail_viewmodel.dart';
import 'package:bis/ui/breach/obstacle/obstacle_detail_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/process_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DestructionDetailView extends StatefulWidget {
  final Destruction destruction;

  const DestructionDetailView({Key? key, required this.destruction})
      : super(key: key);

  @override
  _DestructionDetailViewState createState() => _DestructionDetailViewState();
}

class _DestructionDetailViewState extends State<DestructionDetailView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DestructionDetailViewModel>.reactive(
        viewModelBuilder: () => DestructionDetailViewModel(),
        onModelReady: (viewModel) {
          viewModel.initialise(widget.destruction);
        },
        builder: (context, viewModel, _) => Scaffold(
              appBar: AppBar(
                title: Text(widget.destruction.name),
              ),
              floatingActionButton:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                FloatingActionButton(
                    child: const Icon(Icons.edit),
                    heroTag: Random().nextInt(1000),
                    onPressed: () {
                      if (!viewModel.updateView) {
                        viewModel.navigateToDestructionEdit(widget.destruction);
                      }
                    }),
                verticalSpaceRegular,
                FloatingActionButton(
                    child: viewModel.isPdfGenerated ? const CircularProgressIndicator() : const Icon(Icons.picture_as_pdf),
                    heroTag: Random().nextInt(1000),
                    onPressed: () async{
                      await viewModel.printAsPdf(widget.destruction);
                    }),
                    verticalSpaceRegular,
                    FloatingActionButton(
                        child: const Icon(Icons.copy),
                        onPressed: () {
                          if (!viewModel.updateView) {
                            viewModel.navigateToDestructionCopy(widget.destruction);
                          }
                        }),
              ]),
              body: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Column(children: [
                        TextFormField(
                          readOnly: true,
                          controller: viewModel.worktype,
                          decoration: InputDecoration(
                            labelText: I10n.of(context).workType,
                            icon: const Icon(Icons.merge_type),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          readOnly: true,
                          controller: viewModel.performer,
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
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          readOnly: true,
                          controller: viewModel.description,
                          maxLines: 5,
                          decoration: InputDecoration(
                            labelText: I10n.of(context).description,
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
                          height: 15.0,
                        ),
                        TextFormField(
                          readOnly: true,
                          controller: viewModel.place,
                          decoration: InputDecoration(
                            labelText: I10n.of(context).place,
                            icon: const Icon(FontAwesomeIcons.map),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          readOnly: true,
                          controller: viewModel.date,
                          decoration: InputDecoration(
                            labelText: I10n.of(context).date,
                            icon: const Icon(FontAwesomeIcons.calendar),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                        ),
                        const SizedBox(height: 15),
                        BoxText.headingThree(I10n.of(context).obstacle),
                        Divider(),
                        widget.destruction.obstacle == null
                            ? BoxText.body(I10n.of(context)
                                .didntAddToDestruction(
                                    I10n.of(context).obstacle))
                            : Card(
                                child: ListTile(
                                  onTap: () {
                                    viewModel.navigateToObstacleDetail(
                                        widget.destruction.obstacle!);
                                  },
                                  title:
                                      Text(widget.destruction.obstacle!.name),
                                  subtitle: Text(
                                      "${widget.destruction.obstacle!.thickness.toString()} cm"),
                                ),
                              ),
                        const SizedBox(height: 15),
                        BoxText.headingThree(I10n.of(context).explosiveUnit),
                        Divider(),
                        widget.destruction.explosiveUnit == null
                            ? BoxText.body(I10n.of(context)
                                .didntAddToDestruction(
                                    I10n.of(context).explosiveUnit))
                            : Card(
                                child: ListTile(
                                  onTap: () {
                                    viewModel.navigateToExplosiveUnitDetail(
                                        widget.destruction.explosiveUnit!);
                                  },
                                  title: Text(
                                      widget.destruction.explosiveUnit!.name),
                                  subtitle: Text(
                                      "NEW Actual: ${widget.destruction.explosiveUnit!.newActual!.toStringAsFixed(2)} \nNEW TNT: ${widget.destruction.explosiveUnit!.newTnt!.toStringAsFixed(2)} "),
                                ),
                              ),
                        const SizedBox(height: 5),
                        Visibility(
                          visible: widget.destruction.expectedBehaviour != null,
                          child: Card(
                            child: ListTile(
                              title: Text(
                                  widget.destruction.expectedBehaviour != null ? widget.destruction.expectedBehaviour!.name : "Null"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          visible: widget.destruction.expectedEffect != null,
                          child: Card(
                            child: ListTile(
                              title: Text(
                                  widget.destruction.expectedEffect != null ? widget.destruction.expectedEffect!.name : "Null"),
                            ),
                          ),
                        ),
                        BoxText.headingThree(I10n.of(context).initialSystems),
                        Divider(),
                        widget.destruction.initiationSystem == null
                            ? BoxText.body(I10n.of(context)
                                .didntAddToDestruction(
                                    I10n.of(context).initialSystems))
                            : Card(
                                child: ListTile(
                                  onTap: () {},
                                  title: Text(widget
                                      .destruction.initiationSystem!.name),
                                ),
                              ),
                        const SizedBox(height: 15),
                        BoxText.headingThree(I10n.of(context).gun),
                        Divider(),
                        widget.destruction.gun == null
                            ? BoxText.body(I10n.of(context)
                            .didntAddToDestruction(
                            I10n.of(context).guns))
                            : Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(widget
                                .destruction.gun!.name),
                          ),
                        ),
                        const SizedBox(height: 15),
                        BoxText.headingThree(I10n.of(context).tools),
                        Divider(),
                        widget.destruction.tool == null
                            ? BoxText.body(I10n.of(context)
                            .didntAddToDestruction(
                            I10n.of(context).tools))
                            : Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(widget
                                .destruction.tool!.name),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: BoxText.headingThree(
                                    I10n.of(context).twoStage)),
                            Expanded(
                                child: Text(
                              widget.destruction.twoStage
                                  ? I10n.of(context).yes
                                  : I10n.of(context).no,
                              style: TextStyle(
                                  color: widget.destruction.isGood
                                      ? Colors.green
                                      : Colors.red,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                            visible:
                                widget.destruction.secondExplosiveUnit != null,
                            child: Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    onTap: () {
                                      viewModel.navigateToExplosiveUnitDetail(
                                          widget.destruction
                                              .secondExplosiveUnit!);
                                    },
                                    title: Text(widget.destruction
                                                .secondExplosiveUnit !=
                                            null
                                        ? widget.destruction
                                            .secondExplosiveUnit!.name
                                        : "None"),
                                    subtitle: Text(widget.destruction
                                                .secondExplosiveUnit !=
                                            null
                                        ? "${widget.destruction.secondExplosiveUnit!.newActual.toString()}"
                                        : "Null"),
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            )),
                        Visibility(
                            visible:
                                widget.destruction.secondInitiationSystem !=
                                    null,
                            child: Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    onTap: () {},
                                    title: Text(widget.destruction
                                                .secondInitiationSystem !=
                                            null
                                        ? widget.destruction
                                            .secondInitiationSystem!.name
                                        : "Null"),
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            )),
                        Visibility(
                            visible: widget.destruction.secondTool != null,
                            child: Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    onTap: () {},
                                    title: Text(widget.destruction.secondTool != null
                                        ? widget.destruction.secondTool!.name
                                        : "None"),
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            )),
                        Visibility(
                            visible: widget.destruction.secondGun != null,
                            child: Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    onTap: () {},
                                    title: Text(widget.destruction.secondGun != null
                                        ? widget.destruction.secondGun!.name
                                        : "None"),
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            )),
                        const SizedBox(height: 15),
                        BoxText.headingThree(I10n.of(context).process),
                        const Divider(),
                        widget.destruction.process!.isEmpty
                            ? Center(
                            child: Text(
                                I10n.of(context).addProcessItem))
                            : ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding: EdgeInsets.all(10),
                            itemCount: widget.destruction.process!.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              final ProcessItem event =
                              widget.destruction.process![index];

                              final child = ProcessTimelineChild(
                                title: event.title,
                                subtitle: event.description,
                              );

                              return TimelineTile(
                                alignment: TimelineAlign.start,
                                endChild: child,
                                indicatorStyle: IndicatorStyle(
                                  width: 60,
                                  height: 60,
                                  indicator: ProcessTimelineIndicator(
                                      time: event.time.toString()),
                                  drawGap: true,
                                ),
                                beforeLineStyle: LineStyle(
                                  color: Colors.white.withOpacity(0.2),
                                  thickness: 3,
                                ),
                              );
                            }),

                        BoxText.headingThree(
                            I10n.of(context).photosBeforeDestruction),
                        const SizedBox(height: 15),
                        widget.destruction.photosBefore!.isEmpty
                            ? Center(child: Text(I10n.of(context).noPhotos))
                            : Container(
                                margin: const EdgeInsets.all(10),
                                child: Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    for (var i = 0;
                                        i <
                                            widget.destruction.photosBefore!
                                                .length;
                                        i++)
                                      Container(
                                          width: 150,
                                          child: Column(
                                            children: [
                                              FullScreenWidget(
                                                disposeLevel: DisposeLevel.High,
                                                child: Hero(
                                                  tag: "Hero $i a",
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      child: Image.file(
                                                        File(widget
                                                            .destruction
                                                            .photosBefore![i]
                                                            .path),
                                                        width: 150,
                                                        height: 150,
                                                        fit: BoxFit.cover,
                                                      )),
                                                ),
                                              ),
                                              Text(
                                                "${widget.destruction.photosBefore![i].description}",
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          ))
                                  ],
                                ),
                              ),
                        const SizedBox(height: 15),

                        BoxText.headingThree(
                            I10n.of(context).photosAfterDestruction),
                        const SizedBox(height: 15),
                        widget.destruction.photosAfter!.isEmpty
                            ? Center(child: Text(I10n.of(context).noPhotos))
                            : Container(
                                margin: const EdgeInsets.all(10),
                                child: Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    for (var i = 0;
                                        i <
                                            widget.destruction.photosAfter!
                                                .length;
                                        i++)
                                      Container(
                                          width: 150,
                                          child: Column(
                                            children: [
                                              FullScreenWidget(
                                                disposeLevel: DisposeLevel.High,
                                                child: Hero(
                                                  tag: "Hero $i b",
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      child: Image.file(
                                                        File(widget
                                                            .destruction
                                                            .photosAfter![i]
                                                            .path),
                                                        width: 150,
                                                        height: 150,
                                                        fit: BoxFit.cover,
                                                      )),
                                                ),
                                              ),
                                              Text(
                                                "${widget.destruction.photosAfter![i].description}",
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          ))
                                  ],
                                ),
                              ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: BoxText.headingOne(
                                    I10n.of(context).result)),
                            Expanded(
                                child: Text(
                                  widget.destruction.isGood ? "GO" : "NO GO",
                                  style: TextStyle(
                                      color: widget.destruction.isGood
                                          ? Colors.green
                                          : Colors.red,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          readOnly: true,
                          controller: viewModel.recomendation,
                          maxLines: 5,
                          decoration: InputDecoration(
                            labelText: I10n.of(context).recomendation,
                            icon: const Icon(FontAwesomeIcons.alignJustify),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                        ),
                        const SizedBox(height: 10),
                        Visibility(
                          visible: widget.destruction.modified != null,
                          child: TextFormField(
                            readOnly: true,
                            controller: viewModel.update,
                            decoration: InputDecoration(
                              labelText: I10n.of(context).updateDate,
                              icon: const Icon(FontAwesomeIcons.calendar),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                        )
                      ]))),
            ));
  }
}
