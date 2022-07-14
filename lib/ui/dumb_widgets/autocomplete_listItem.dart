import 'package:bis/shared/app_colors.dart';
import 'package:flutter/material.dart';

import 'box_text.dart';

class AutoCompleteListItem extends StatelessWidget {
  final String state, city;
  final Function onTap;

  const AutoCompleteListItem(
      {Key? key, required this.state, required this.city, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Icons.near_me,
            color: kcMediumGreyColor,
          ),
          onTap: () => onTap(),
          title: BoxText.subheading(city),
          subtitle: BoxText.caption(state),
        ),
        Divider(
          indent: 50,
        )
      ],
    );
  }
}
