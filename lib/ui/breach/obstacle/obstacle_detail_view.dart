import 'dart:io';
import 'dart:math';

import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/breach/obstacle/obstacle_detail_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class ObstacleDetailView extends StatefulWidget {
  final Obstacle obstacle;

  const ObstacleDetailView({Key? key, required this.obstacle})
      : super(key: key);

  @override
  _ObstacleDetailViewState createState() => _ObstacleDetailViewState();
}

class _ObstacleDetailViewState extends State<ObstacleDetailView> {
  @override
  Widget build(BuildContext context) {
    print(widget.obstacle.photos);
    return ViewModelBuilder<ObstacleDetailViewModel>.reactive(
      viewModelBuilder: () => ObstacleDetailViewModel(),
      onModelReady: (viewModel) {
        viewModel.initialise(widget.obstacle);
      },
      builder: (context, viewModel, _) => Scaffold(

          floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [FloatingActionButton(
                heroTag: Random().nextInt(1000),
                  child:
                  const Icon(Icons.edit) ,
                  onPressed: () {
                    if (!viewModel.updateView) {
                      viewModel.navigateToObstacleEdit(widget.obstacle);
                    }
                  }),
                verticalSpaceRegular,
                FloatingActionButton(
                    child:
                    const Icon(Icons.copy) ,
                    onPressed: () {
                      if (!viewModel.updateView) {
                        viewModel.navigateToObstacleCopy(widget.obstacle);
                      }
                    }),
              ]),
          body: CustomScrollView( slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  widget.obstacle.name,
                  textScaleFactor: 0.7,
                ),
                  background: widget.obstacle.photos!.isNotEmpty ? Image.file(
                     File(widget.obstacle.photos!.first),
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
                  controller: viewModel.obstacleType,
                  decoration: InputDecoration(
                    labelText: I10n.of(context).obstacleType,
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
                BoxText.headingThree(I10n.of(context).structure),
                //const SizedBox(height: 15),
                widget.obstacle.buildMaterials==null
                    ? Center(
                  child: Text(I10n.of(context)
                      .addNewItemToObstacleStructure),
                )
                    : ListView.builder(
                  shrinkWrap: true,
                    itemCount:
                    widget.obstacle.buildMaterials!.length,
                  itemBuilder: (ctx, idx) {
                    return Card(child:
                    ListTile(
                    title: Text(widget.obstacle.buildMaterials![idx].buildMaterial!.name),
                      subtitle: Text("${widget.obstacle.buildMaterials![idx].quantity!.toString()} cm"),
                    ),

                );}
            ),
                BoxText.headingThree(I10n.of(context).photos),
                const SizedBox(height: 15),
                widget.obstacle.photos!.isEmpty ? Center(child:Text(I10n.of(context).noPhotos)): Container(
                  margin: EdgeInsets.all(10),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      for (var i = 0; i < widget.obstacle.photos!.length; i++)
                          FullScreenWidget(
                            child: Hero(
                              tag: "Hero $i",
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    File(widget.obstacle.photos![i]),
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
                  visible: widget.obstacle.modified!=null,
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
