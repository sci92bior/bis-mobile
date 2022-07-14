import 'dart:io';
import 'dart:math';

import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/breach/explosive_unit/explosive_unit_detail_viewmodel.dart';
import 'package:bis/ui/breach/obstacle/obstacle_detail_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class ExplosiveUnitDetailView extends StatefulWidget {
  final ExplosiveUnit explosiveUnit;

  const ExplosiveUnitDetailView({Key? key, required this.explosiveUnit})
      : super(key: key);

  @override
  _ExplosiveUnitDetailViewState createState() => _ExplosiveUnitDetailViewState();
}

class _ExplosiveUnitDetailViewState extends State<ExplosiveUnitDetailView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExplosiveUnitDetailViewModel>.reactive(
      viewModelBuilder: () => ExplosiveUnitDetailViewModel(),
      onModelReady: (viewModel) {
        viewModel.initialise(widget.explosiveUnit);
      },
      builder: (context, viewModel, _) => Scaffold(

          floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [FloatingActionButton(
                heroTag: Random().nextInt(10000).toString(),
              child:
                  const Icon(Icons.edit) ,
              onPressed: () {
                if (!viewModel.updateView) {
                  viewModel.navigateToExplosiveUnitEdit(widget.explosiveUnit);
                }
              }),
                verticalSpaceRegular,
                FloatingActionButton(
                    child:
                    const Icon(Icons.copy) ,
                    onPressed: () {
                      if (!viewModel.updateView) {
                        viewModel.navigateToExplosiveUnitCopy(widget.explosiveUnit);
                      }
                    }),
              ]),
          body: CustomScrollView(
    slivers: [
      SliverAppBar(
        pinned: true,
        expandedHeight: MediaQuery.of(context).size.height * 0.3,
        flexibleSpace: FlexibleSpaceBar(
          title: Text(
            widget.explosiveUnit.name,
            textScaleFactor: 0.7,
          ),
          background: widget.explosiveUnit.photos!.isNotEmpty ? Image.file(
            File(widget.explosiveUnit.photos!.first),
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ) : Container(color: Colors.grey,child: Center(child: Text(I10n.of(context).noPhoto)))
        ),
      ),
        SliverToBoxAdapter(
            child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                TextFormField(
                  readOnly: true,
                  controller: viewModel.explosiveUnitType,
                  decoration: InputDecoration(
                    labelText: I10n.of(context).explosiveUnitType,
                    icon: const Icon(FontAwesomeIcons.cubes),
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
                  controller: viewModel.description,
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
                  height: 28.0,
                ),
                TextFormField(
                  readOnly: true,
                  controller: viewModel.madeTime,
                  decoration: InputDecoration(
                    labelText: I10n.of(context).madeTime,
                    icon: const Icon(Icons.timer),
                    suffix: Text("min."),
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
                    controller: viewModel.date,
                    decoration: InputDecoration(
                      labelText: I10n.of(context).createdDate,
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
                BoxText.headingThree(I10n.of(context).composition),
                //const SizedBox(height: 15),
                widget.explosiveUnit.explosiveMaterialCount==null
                    ? Center(
                  child: Text(I10n.of(context)
                      .addNewItemToObstacleStructure),
                )
                    : ListView.builder(
                  shrinkWrap: true,
                    itemCount:
                    widget.explosiveUnit.explosiveMaterialCount!.length,
                  itemBuilder: (ctx, idx) {
                    return Card(child:
                    ListTile(
                    title: Text(widget.explosiveUnit.explosiveMaterialCount![idx].explosiveMaterial!.name),
                      subtitle: Text("${widget.explosiveUnit.explosiveMaterialCount![idx].quantity!.toString()} ${widget.explosiveUnit.explosiveMaterialCount![idx].explosiveMaterial!.unitType.toString()}"),
                    ),

                );}
            ),
                BoxText.headingThree(I10n.of(context).photos),
                const SizedBox(height: 15),
                widget.explosiveUnit.photos!.isEmpty ? Center(child:Text(I10n.of(context).noPhotos)): Container(
                  margin: const EdgeInsets.all(10),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      for (var i = 0; i < widget.explosiveUnit.photos!.length; i++)
                          FullScreenWidget(
                            child: Hero(
                              tag: Random().nextInt(1000).toString(),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    File(widget.explosiveUnit.photos![i]),
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                Visibility(
                  visible: widget.explosiveUnit.modified!=null,
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
                ),)
          ])))]),
    ));
  }
}
