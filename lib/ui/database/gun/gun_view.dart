import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'gun_viewmodel.dart';

class GunView extends StatefulWidget {
  const GunView({Key? key}) : super(key: key);

  @override
  _GunViewState createState() => _GunViewState();
}

class _GunViewState extends State<GunView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GunViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).guns),
      ),

          body: Center(
              child: viewModel.isBusy
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      itemBuilder: (ctx, idx) {
                        return DatabaseListItem(name: viewModel.data![idx].name, onTap: () {
                          viewModel.goToFaqDetail(viewModel.data![idx]);
                        });
                      },
                      itemCount: viewModel.data!.length,
                    ))),
      viewModelBuilder: () => GunViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
