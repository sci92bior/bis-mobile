

import 'package:bis/ui/database/database_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class DatabaseView extends StatelessWidget {
  const DatabaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DatabaseViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(

          body: Center(
              child: GridView.extent(maxCrossAxisExtent: 200,
                shrinkWrap: true,

                padding: const EdgeInsets.all(20),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  BoxButton(title : I10n.of(context).explosiveMaterials, onTap: viewModel.goToExplosiveMaterial,),
                  BoxButton(title : I10n.of(context).buildMaterials, onTap: viewModel.goToConcreteMaterial,),
                  BoxButton(title : I10n.of(context).initialSystems, onTap: viewModel.goToInitiationSystem,),
                  BoxButton(title : I10n.of(context).guns, onTap: viewModel.goToGun,),
                  BoxButton(title : I10n.of(context).ammo, onTap: viewModel.goToAmmo,),
                  BoxButton(title : I10n.of(context).tools, onTap: viewModel.goToTool,),
                  BoxButton(title : I10n.of(context).mountType, onTap: viewModel.goToMountType,),
                  BoxButton(title : I10n.of(context).expectedBehaviour, onTap: viewModel.goToExpectedBehaviour,),
                  BoxButton(title : I10n.of(context).expectedEffect, onTap: viewModel.goToExpectedEffect,),
                ],
              ))),
      viewModelBuilder: () => DatabaseViewModel(),
      onModelReady: (viewModel){
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}

