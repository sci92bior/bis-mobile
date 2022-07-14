import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:bis/ui/tools/utils_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'calculator_view.dart';

class UtilsView extends StatefulWidget {
  const UtilsView({Key? key}) : super(key: key);

  @override
  _UtilsViewState createState() => _UtilsViewState();
}

class _UtilsViewState extends State<UtilsView>
    with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UtilsViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.calculate, color: Colors.white),
                //text: I10n.of(context).calculator,
              ),
              Tab(
                icon: Icon(Icons.change_circle, color: Colors.white),
                //text: I10n.of(context).conventer,
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            CalculatorView(isRapid: false,),
            CalculatorView(isRapid: false,)
          ],
        ),
      ),
      viewModelBuilder: () => UtilsViewModel(),
      onModelReady: (viewModel) {},
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
