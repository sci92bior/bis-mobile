import 'package:bis/shared/app_colors.dart';
import 'package:flutter/material.dart';

class DatabaseListItem extends StatelessWidget {
  final String name;
  final String? subString;
  final bool isThreeLine;
  final void Function()? onTap;
  final IconData? trailingIcon;
  final IconData? leadingIcon;

  const DatabaseListItem(
      {Key? key, required this.name, this.subString, this.onTap, this.isThreeLine = false, this.trailingIcon, this.leadingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        leading: leadingIcon!=null ? Icon(leadingIcon) : null,
        subtitle: subString != null ? Text(subString!) : null,
        isThreeLine: isThreeLine,
        trailing: trailingIcon!=null ? Icon(trailingIcon) : null,
        onTap: onTap,
      ),
    );
  }
}
