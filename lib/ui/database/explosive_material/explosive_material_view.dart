import 'package:bis/ui/database/explosive_material/explosive_material_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class ExplosiveMaterialView extends StatefulWidget {
  const ExplosiveMaterialView({Key? key}) : super(key: key);

  @override
  _ExplosiveMaterialViewState createState() => _ExplosiveMaterialViewState();
}

class _ExplosiveMaterialViewState extends State<ExplosiveMaterialView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExplosiveMaterialViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).explosiveMaterials),
      ),

          body: Center(
              child: viewModel.isBusy
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      itemBuilder: (ctx, idx) {
                        return DatabaseListItem(
                            name: viewModel.data![idx].name,
                            isThreeLine: true,
                            subString: "${I10n.of(context).rFactor(viewModel.data![idx].rFactor)}\n${I10n.of(context).grains(viewModel.data![idx].grain,viewModel.data![idx].unitType!)}",
                            onTap: () {
                          viewModel.goToFaqDetail(viewModel.data![idx]);
                        });
                      },
                      itemCount: viewModel.data!.length,
                    ))),
      viewModelBuilder: () => ExplosiveMaterialViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
