import 'package:bis/models/application_models.dart';
import 'package:bis/ui/dumb_widgets/box_text.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProcessTimelineChild extends StatelessWidget {
  const ProcessTimelineChild({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onRemoveButtonTapped,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final void Function()? onRemoveButtonTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, top: 10, bottom: 10, left: 10),
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  BoxText.subheading(
                    title,
                  ),
                  BoxText.body(
                    subtitle,
                  ),
                ],
              )),
          onRemoveButtonTapped == null
              ? Text("")
              : IconButton(
                  onPressed: onRemoveButtonTapped, icon: Icon(Icons.delete))
        ]));
  }

  Widget _buildIconByAction(Action action) {
    final imageAsset =
        'assets/football/${action.toString().split('.').last}.png';
    return Image.asset(
      imageAsset,
      height: 20,
      width: 20,
    );
  }
}

class TopicTimelineChild extends StatelessWidget {
  const TopicTimelineChild({
    Key? key,
    required this.title,
    this.subtitle,
    this.onTapped,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTapped,
          child: Column(children: [
            BoxText.subheading(
              title,
              align: TextAlign.start,
            ),
             subtitle!=null ?BoxText.body(
              subtitle!,
               align: TextAlign.start,
            ) : Container(),
          ],)
        );
  }
}

class TopicTimelineIndicator extends StatelessWidget {
  const TopicTimelineIndicator({Key? key, required this.done})
      : super(key: key);

  final bool done;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: done ? Colors.green.withOpacity(0.2) : Colors.white.withOpacity(0.2),
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Visibility(
            visible: done,
            child: Icon(
              Icons.check,
              color: Colors.green,
            )),
      ),
    );
  }
}

class ProcessTimelineIndicator extends StatelessWidget {
  const ProcessTimelineIndicator({Key? key, required this.time})
      : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          time,
        ),
      ),
    );
  }
}
