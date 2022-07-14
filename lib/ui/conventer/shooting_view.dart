

import 'package:bis/ui/conventer/shooting_viewmodel.dart';
import 'package:bis/ui/database/database_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/box_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:bis/generated/l10n.dart';

class ConventerView extends StatelessWidget {
  const ConventerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConventerViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(

          body: Center(
              child: Icon(FontAwesomeIcons.hammer,size: 60,))),
      viewModelBuilder: () => ConventerViewModel(),
      onModelReady: (viewModel){
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}

