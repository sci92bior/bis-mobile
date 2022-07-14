

import 'package:bis/ui/database/database_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class ShootingView extends StatelessWidget {
  const ShootingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DatabaseViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(

          body: Center(
              child: Icon(FontAwesomeIcons.hammer,size: 60,))),
      viewModelBuilder: () => DatabaseViewModel(),
      onModelReady: (viewModel){
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}

