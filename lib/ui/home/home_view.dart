import 'dart:math';

import 'package:bis/ui/assess/assess_view.dart';
import 'package:bis/ui/breach/breach_view.dart';
import 'package:bis/ui/conventer/shooting_view.dart';
import 'package:bis/ui/database/database_view.dart';
import 'package:bis/ui/database/tool/tool_view.dart';
import 'package:bis/ui/planner/planner_view.dart';
import 'package:bis/ui/shooting/shooting_view.dart';
import 'package:bis/ui/tools/calculator_view.dart';
import 'package:bis/ui/tools/utils_view.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  final int id;

  const HomeView({Key? key, required this.id}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Map<int, Widget> _viewCache = Map<int, Widget>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (viewModel) async {
        viewModel.setTabIndex(widget.id);
      },
      createNewModelOnInsert: true,
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("BIS"),
          actions: <Widget>[
            PopupMenuButton(
              initialValue: 2,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Initicon(
                  text: viewModel.getUsername(),
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text('Info'),
                  onTap: null,
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Wyloguj'),
                  onTap: null,
                ),

              ],
            ),
          ],
        ),
        body: getViewForIndex(viewModel.currentTabIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white24,
          elevation: 2,
          currentIndex: viewModel.currentTabIndex,
          onTap: viewModel.setTabIndex,
          items: [
            BottomNavigationBarItem(
                icon:
                    const Icon(FontAwesomeIcons.database),
                label: I10n.of(context).database),
             BottomNavigationBarItem(
                icon:
                    const Icon(FontAwesomeIcons.fire),
                label: I10n.of(context).breach),
            /*BottomNavigationBarItem(
                icon:
                const Icon(FontAwesomeIcons.crosshairs),
                label: I10n.of(context).shooting),*/
            BottomNavigationBarItem(
                icon:
                const Icon(FontAwesomeIcons.check),
                label: I10n.of(context).assessment),
            BottomNavigationBarItem(
                icon:
                const Icon(FontAwesomeIcons.calendar),
                label: I10n.of(context).planner),
            BottomNavigationBarItem(
                icon:
                const Icon(FontAwesomeIcons.keyboard),
                label: I10n.of(context).calculator),
            /*BottomNavigationBarItem(
                icon:
                const Icon(FontAwesomeIcons.exchangeAlt),
                label: I10n.of(context).conventer),*/

        ]
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget? getViewForIndex(int index) {
    if (!_viewCache.containsKey(index)) {
      switch (index) {
        case 0:
          _viewCache[index] = const DatabaseView();
          break;
        case 1:
          _viewCache[index] = const BreachView();
          break;
       /* case 2:
          _viewCache[index] = const ShootingView();*/
          break;
        case 2:
          _viewCache[index] = const AssessView();
          break;
        case 3:
          _viewCache[index] = const PlannerView();
          break;
        case 4:
          _viewCache[index] = const CalculatorView(isRapid: false);
          break;
        /*case 6:
          _viewCache[index] = const ConventerView();*/
          break;
      }
    }
    return _viewCache[index]!;
  }
}
