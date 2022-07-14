import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'expected_behaviour_viewmodel.dart';

class ExpectedBehaviourView extends StatefulWidget {
  const ExpectedBehaviourView({Key? key}) : super(key: key);

  @override
  _ExpectedBehaviourViewState createState() => _ExpectedBehaviourViewState();
}

class _ExpectedBehaviourViewState extends State<ExpectedBehaviourView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExpectedBehaviourViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).expectedBehaviour),
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
      viewModelBuilder: () => ExpectedBehaviourViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
