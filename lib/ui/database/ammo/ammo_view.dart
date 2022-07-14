import 'package:bis/ui/database/ammo/ammo_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class AmmoView extends StatefulWidget {
  const AmmoView({Key? key}) : super(key: key);

  @override
  _AmmoViewState createState() => _AmmoViewState();
}

class _AmmoViewState extends State<AmmoView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AmmoViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).ammo),
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
      viewModelBuilder: () => AmmoViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
