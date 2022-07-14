import 'package:bis/models/application_models.dart';
import 'package:bis/shared/styles.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:bis/ui/dumb_widgets/database_list_item.dart';
import 'package:flutter/material.dart';
import 'package:bis/generated/l10n.dart';
import 'package:stacked/stacked.dart';
import 'obstacle_viewmodel.dart';
import 'package:bis/generated/l10n.dart';

class ObstacleTabView extends StatefulWidget {
  const ObstacleTabView({Key? key}) : super(key: key);

  @override
  _ObstacleTabViewState createState() => _ObstacleTabViewState();
}

class _ObstacleTabViewState extends State<ObstacleTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ObstacleViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: viewModel.navigateToNewObstacleForm,
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
                child: viewModel.currentObstacles.isNotEmpty
                    ? ListView.builder(
                        itemCount: viewModel.currentObstacles.length,
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
                                viewModel.navigateToObstacleDetail(
                                    viewModel.currentObstacles[index]);
                              },
                              name: viewModel.currentObstacles[index].name,
                              leadingIcon: getIcon(viewModel
                                  .currentObstacles[index].obstacleType),
                              trailingIcon: Icons.navigate_next,
                              subString: viewModel
                                  .currentObstacles[index].created
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
      viewModelBuilder: () => ObstacleViewModel(),
      onModelReady: (viewModel) {
        viewModel.initialise();
      },
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }

  IconData getIcon(ObstacleType obstacleType) {
    if (obstacleType == ObstacleType.WALL) {
      return Icons.stop;
    } else if (obstacleType == ObstacleType.DOOR) {
      return Icons.door_back_door;
    } else if (obstacleType == ObstacleType.WINDOW) {
      return Icons.window;
    } else {
      return Icons.remove;
    }
  }
}
