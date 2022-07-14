import 'package:bis/ui/database/tool/tool_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class ToolView extends StatefulWidget {
  const ToolView({Key? key}) : super(key: key);

  @override
  _ToolViewState createState() => _ToolViewState();
}

class _ToolViewState extends State<ToolView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ToolViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
      appBar: AppBar(
          title: Text(I10n.of(context).tools),
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
      viewModelBuilder: () => ToolViewModel(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}