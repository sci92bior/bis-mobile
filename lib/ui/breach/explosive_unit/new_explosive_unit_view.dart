import 'dart:ffi';
import 'dart:io';

import 'package:bis/models/application_models.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/composition_item.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:bis/generated/l10n.dart';

import 'new_explosive_unit_viewmodel.dart';

// #2: with $ExampleFormView

class NewExplosiveUnitView extends StatefulWidget {

  final ExplosiveUnit? explosiveUnit;
  final bool isUpdate;
  final bool isRapid;

  const NewExplosiveUnitView({Key? key, this.explosiveUnit, required this.isUpdate, required this.isRapid}) : super(key: key);

  @override
  _NewExplosiveUnitViewState createState() => _NewExplosiveUnitViewState();
}

class _NewExplosiveUnitViewState extends State<NewExplosiveUnitView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewExplosiveUnitViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.initialise(widget.explosiveUnit, widget.isUpdate);
      },
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(I10n.of(context).explosiveUnit),
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
                viewModel.saveData(widget.isUpdate, widget.isRapid);
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
                              labelText: I10n.of(context).explosiveUnitType,
                              icon: const Icon(Icons.help),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(),
                              ),
                            ),
                            value: viewModel.getCurrentExplosiveUnitType,
                            onChanged: (value) {
                              viewModel.setCurrentExplosiveUnitype(value!);
                            },
                            items: viewModel
                                .getExplosiveUnitTypeList()
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
                            keyboardType: TextInputType.number,
                            controller: viewModel.madeTimeController,
                            decoration: InputDecoration(
                              labelText: I10n.of(context).madeTime,
                              icon: const Icon(Icons.timer),
                              fillColor: Colors.white,
                              suffix: Text("min."),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            controller: viewModel.descriptionController,
                            enabled: widget.isUpdate ? false : true,
                            decoration: InputDecoration(
                              labelText: I10n.of(context).description,
                              icon: const Icon(Icons.align_horizontal_center),
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
                                    I10n.of(context).composition)),
                            Expanded(
                                child: BoxButton(
                                  title: I10n.of(context).add,
                                  leading: const Icon(Icons.add),
                                  onTap: viewModel.addElementToExplosiveMaterialCount,
                                ))
                          ]),
                          Divider(),
                          const SizedBox(height: 15),
                          viewModel.explosiveMaterialCountList.isEmpty
                              ? Center(
                            child: Text(I10n.of(context)
                                .addNewItemToObstacleStructure),
                          )
                              : ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (ctx, idx) {
                              var controller = TextEditingController();
                              viewModel.quantityControllers.add(controller);
                              if(viewModel.explosiveMaterialCountList[idx].quantity!=null){
                                controller.text = viewModel.explosiveMaterialCountList[idx].quantity.toString();
                              }
                              return Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 4,
                                          child: DropdownSearch<ExplosiveMaterial>(
                                              mode: Mode.BOTTOM_SHEET,
                                              //showSelectedItems: true,
                                              showSearchBox: true,
                                              itemAsString: (item){
                                                return item!.name;
                                              },
                                              items: viewModel.getExplosiveMaterialNameList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  viewModel.updateExplosiveMaterial(null, value!.name, idx);
                                                });
                                              },
                                              popupItemDisabled: (ExplosiveMaterial s) => s.name.startsWith('I'),
                                              selectedItem: viewModel.explosiveMaterialCountList[idx].explosiveMaterial !=null ? viewModel.explosiveMaterialCountList[idx].explosiveMaterial! : null  )),
                                      horizontalSpaceSmall,
                                      Expanded(
                                        flex: 3,
                                        child: TextFormField(
                                          controller: controller,
                                            keyboardType:
                                            const TextInputType.numberWithOptions(decimal: true),
                                            onChanged: (value){
                                              viewModel.updateExplosiveMaterial(double.parse(value), null, idx);
                                            },
                                            onEditingComplete: (){
                                            viewModel.calculateData();
                                            },
                                            decoration: InputDecoration(
                                              labelText: I10n.of(context).quantity,
                                              suffix: viewModel.explosiveMaterialCountList[idx].explosiveMaterial !=null ? Text(viewModel.explosiveMaterialCountList[idx].explosiveMaterial!.unitType!) : null,
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(25.0),
                                                borderSide: const BorderSide(),
                                              ),
                                            )),
                                      ),
                                      Expanded(
                                        child: IconButton(
                                          icon: const Icon(Icons.calculate),
                                          onPressed: () {
                                            viewModel.updateQuantity(idx);
                                          })
                                      ),
                                      Expanded(
                                        child: IconButton(
                                          icon: const Icon(Icons.delete),
                                          onPressed: (){viewModel.removeElementFromExplosiveMaterialCount(viewModel.explosiveMaterialCountList[idx]);},
                                        ),
                                      ),
                                    ],
                                  ));
                            },
                            itemCount:
                            viewModel.explosiveMaterialCountList.length,
                          ),
                          const SizedBox(height: 15),
                          Row(children: [
                            Expanded(
                                flex: 2,
                                child:
                                BoxText.subheading(I10n.of(context).newTnt)),
                            Expanded(
                                child: BoxText.subheading(
                                    "${viewModel.newTnt.toStringAsFixed(2)}")),
                          ]),
                          const SizedBox(height: 15),
                          Row(children: [
                            Expanded(
                                flex: 2,
                                child: BoxText.subheading(I10n.of(context).newActual)),
                            Expanded(
                                child: BoxText.subheading(
                                    "${viewModel.newActual.toStringAsFixed(2)} ")),
                          ]),
                          const SizedBox(height: 15),
                          Row(children: [
                            Expanded(
                                flex: 2,
                                child: BoxText.subheading(I10n.of(context).msd)),
                            Expanded(
                                child: BoxText.subheading(
                                    "${viewModel.msd.toStringAsFixed(2)} m.")),
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
      viewModelBuilder: () => NewExplosiveUnitViewModel(),
    );
  }
}

