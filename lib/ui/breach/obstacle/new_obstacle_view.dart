import 'dart:ffi';
import 'dart:io';

import 'package:bis/models/application_models.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/composition_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:bis/generated/l10n.dart';

import 'new_obstacle_viewmodel.dart';

// #2: with $ExampleFormView
class NewObstacleView extends StatelessWidget {

  final Obstacle? obstacle;
  bool isUpdate;
  bool isRapid;

  NewObstacleView({Key? key, this.obstacle, required this.isUpdate, required this.isRapid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewObstacleViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.initialise(obstacle, isUpdate);
      },
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(I10n.of(context).obstacle),
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
                viewModel.saveData(isUpdate, isRapid);
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
                          labelText: I10n.of(context).obstacleType,
                          icon: const Icon(Icons.help),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                        ),
                        value: viewModel.getCurrentObstacleType,
                        onChanged: (value) {
                          viewModel.setCurrentObstacleType(value!);
                        },
                        items: viewModel
                            .getObstaclesTypeList()
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
                        controller: viewModel.nameController,
                        enabled: isUpdate ? false : true,
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
                      Row(children: [
                        Expanded(
                            flex: 3,
                            child: BoxText.headingThree(
                                I10n.of(context).structure)),
                        Expanded(
                            child: BoxButton(
                          title: I10n.of(context).add,
                          leading: const Icon(Icons.add),
                          onTap: viewModel.addElementToConcreteMaterialCount,
                        ))
                      ]),
                      Divider(),
                      const SizedBox(height: 15),
                      viewModel.getBuildMaterialsCountList().isEmpty
                          ? Center(
                              child: Text(I10n.of(context)
                                  .addNewItemToObstacleStructure),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (ctx, idx) {
                                return CompositionItem(
                                    viewModel.getBuildMaterialNameList(),
                                    I10n.of(context).buildMaterials,
                                    I10n.of(context).quantity,
                                    onQuantityChanged: (value) {
                                  viewModel.updateBuildMaterial(
                                      value, null, idx);
                                }, onMaterialChanged: (value) {
                                  viewModel.updateBuildMaterial(
                                      null, value, idx);
                                }, onDeleteTap: () {
                                  viewModel
                                      .removeElementToConcreteMaterialCount(
                                          viewModel
                                                  .getBuildMaterialsCountList()[
                                              idx]);
                                },
                                initialValue: viewModel.getBuildMaterialsCountList()[idx].quantity,
                                initialSelectedItem: viewModel.getBuildMaterialsCountList()[idx].buildMaterial != null ? viewModel.getBuildMaterialsCountList()[idx].buildMaterial!.name : null,);
                              },
                              itemCount:
                                  viewModel.getBuildMaterialsCountList().length,
                            ),
                      const SizedBox(height: 15),
                      Row(children: [
                        Expanded(
                            flex: 2,
                            child:
                                BoxText.subheading(I10n.of(context).thickness)),
                        Expanded(
                            child: BoxText.subheading(
                                "${viewModel.thickness.toString()} cm")),
                      ]),
                      const SizedBox(height: 15),
                      Row(children: [
                        Expanded(
                            flex: 3,
                            child:
                                BoxText.headingThree(I10n.of(context).photos)),
                        Expanded(
                            child: IconButton(
                              icon: const Icon(Icons.photo_sharp),
                              onPressed: (){viewModel.selectImage(fromGallery: true);},
                            )),
                        Expanded(
                            child: IconButton(
                              icon: const Icon(Icons.camera_alt),
                              onPressed: (){viewModel.selectImage(fromGallery: false);},
                            ))
                      ]),
              const Divider(),
              viewModel.photos.isEmpty ? Center(child:Text(I10n.of(context).addNewPhotoOfObstacle)): Container(
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
              ),
                    ],
                  )),
            )),
          )),
      viewModelBuilder: () => NewObstacleViewModel(),
    );
  }
}
