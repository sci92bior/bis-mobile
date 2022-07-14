import 'dart:math';

import 'package:bis/shared/styles.dart';
import 'package:bis/ui/breach/devastation/destruction_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bis/generated/l10n.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../../shared/ui_helpers.dart';

class DestructionTabVIew extends StatefulWidget {
  const DestructionTabVIew({Key? key}) : super(key: key);

  @override
  _DestructionTabVIewState createState() => _DestructionTabVIewState();
}

class _DestructionTabVIewState extends State<DestructionTabVIew> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DestructionViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton:
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: viewModel.navigateToNewDestructionForm,
          ),
          verticalSpaceRegular,
          FloatingActionButton(
              child: const Icon(Icons.qr_code),
              heroTag: Random().nextInt(1000),
              onPressed: () async{await viewModel.scanQR();//await viewModel.printAsPdf(widget.destruction);
              }),

        ]),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => viewModel.filterList(value),
                decoration: InputDecoration(
                    labelText: I10n.of(context).search,
                    suffixIcon: const Icon(Icons.search)),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: viewModel.currentDestructions.isNotEmpty
                    ? ListView.builder(
                    itemCount: viewModel.currentDestructions.length,
                    itemBuilder: (context, index) => Dismissible(
                        key: Key(DateTime.now().toString()),
                        onDismissed: (direction) {
                          setState(() {
                            viewModel.deleteFromList(index);
                          });
                        },
                        background: Container(
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                const Icon(Icons.delete,
                                    color: Colors.white),
                                Text(I10n.of(context).delete,
                                    style: const TextStyle(
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        child: DatabaseListItem(
                          onTap: () {
                            viewModel.navigateToDestructionDetail(
                                viewModel.currentDestructions[index]);
                          },
                          name: viewModel.currentDestructions[index].name,
                          trailingIcon: Icons.navigate_next,
                          subString: "${DateFormat.yMd().format(viewModel
                              .currentDestructions[index].created)} ${DateFormat.Hm().format(viewModel
                              .currentDestructions[index].created)}"
                        )))
                    : Text(
                  I10n.of(context).noResults,
                  style: bodyStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DestructionViewModel(),
      onModelReady: (viewModel) {
        viewModel.initialise();
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
