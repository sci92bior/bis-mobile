import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'initiation_system_viewmodel.dart';

class InitiationSystemView extends StatefulWidget {
  const InitiationSystemView({Key? key}) : super(key: key);

  @override
  _InitiationSystemViewState createState() => _InitiationSystemViewState();
}

class _InitiationSystemViewState extends State<InitiationSystemView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InitiationSystemViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).initialSystems),
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
      viewModelBuilder: () => InitiationSystemViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
