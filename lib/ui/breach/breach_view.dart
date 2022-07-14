import 'package:bis/shared/app_colors.dart';
import 'package:bis/ui/breach/devastation/destruction_tab_view.dart';
import 'package:bis/ui/breach/explosive_unit/explosive_unit_tab_view.dart';
import 'package:bis/ui/breach/obstacle/obstacle_tab_view.dart';
import 'package:bis/ui/database/database_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'breach_viewmodel.dart';

class BreachView extends StatefulWidget {
  const BreachView({Key? key}) : super(key: key);

  @override
  _BreachViewState createState() => _BreachViewState();
}

class _BreachViewState extends State<BreachView>
    with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BreachViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: kcButtonColor),
            tabs: <Widget>[
              Tab(
                //icon: Icon(Icons.my_library_books_rounded, color: Colors.white),
                text: I10n.of(context).destructions,
              ),
              Tab(
                //icon: Icon(Icons.bug_report, color: Colors.white),
                text: I10n.of(context).explosiveUnits,
              ),
              Tab(
                //icon: Icon(Icons.bug_report, color: Colors.white),
                text: I10n.of(context).obstacles,
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            DestructionTabVIew(),
            ExplosiveUnitTabView(),
            ObstacleTabView()
          ],
        ),
      ),
      viewModelBuilder: () => BreachViewModel(),
      onModelReady: (viewModel) {},
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
