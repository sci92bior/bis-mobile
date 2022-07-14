import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'mount_type_viewmodel.dart';

class MountTypeView extends StatefulWidget {
  const MountTypeView({Key? key}) : super(key: key);

  @override
  _MountTypeViewState createState() => _MountTypeViewState();
}

class _MountTypeViewState extends State<MountTypeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MountTypeViewModel>.reactive(
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
      viewModelBuilder: () => MountTypeViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
