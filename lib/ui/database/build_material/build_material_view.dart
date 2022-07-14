import 'package:bis/ui/database/build_material/build_material_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class BuildMaterialView extends StatefulWidget {
  const BuildMaterialView({Key? key}) : super(key: key);

  @override
  _BuildMaterialViewState createState() => _BuildMaterialViewState();
}

class _BuildMaterialViewState extends State<BuildMaterialView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BuildMaterialViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).buildMaterials),
      ),
          body: Center(
              child: viewModel.isBusy
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      itemBuilder: (ctx, idx) {
                        return DatabaseListItem(
                            name: viewModel.data![idx].name,
                            subString: I10n.of(context).aFactorDescription(viewModel.data![idx].aFactor),
                            onTap: () {
                          viewModel.goToFaqDetail(viewModel.data![idx]);
                        });
                      },
                      itemCount: viewModel.data!.length,
                    ))),
      viewModelBuilder: () => BuildMaterialViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
