import 'package:bis/models/application_models.dart';
import 'package:bis/shared/styles.dart';
import 'package:bis/ui/breach/devastation/destruction_viewmodel.dart';
import 'package:bis/ui/breach/explosive_unit/explosive_unit_viewmodel.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bis/generated/l10n.dart';
import 'package:stacked/stacked.dart';

class ExplosiveUnitTabView extends StatefulWidget {
  const ExplosiveUnitTabView({Key? key}) : super(key: key);

  @override
  _ExplosiveUnitTabViewState createState() => _ExplosiveUnitTabViewState();
}

class _ExplosiveUnitTabViewState extends State<ExplosiveUnitTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExplosiveUnitTabViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: viewModel.navigateToNewExplosiveForm,
        ),
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
                child: viewModel.currentExplosiveUnits.isNotEmpty
                    ? ListView.builder(
                    itemCount: viewModel.currentExplosiveUnits.length,
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
                            viewModel.navigateToExplosiveUnitDetail(
                                viewModel.currentExplosiveUnits[index]);
                          },
                          name: viewModel.currentExplosiveUnits[index].name,
                          trailingIcon: Icons.navigate_next,
                          subString: viewModel
                              .currentExplosiveUnits[index].created
                              .toString(),
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
      viewModelBuilder: () => ExplosiveUnitTabViewModel(),
      onModelReady: (viewModel) {
        viewModel.initialise();
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }

}
