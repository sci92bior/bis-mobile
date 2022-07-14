import 'package:bis/models/application_models.dart';
import 'package:bis/shared/app_colors.dart';
import 'package:bis/shared/ui_helpers.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';


class CompositionItem extends StatelessWidget {
  final List<String> listOfNames;
  final List<String>? listOfSuffixes;
  final String dropDownLabel;
  final String numberInputLabel;
  final String? initialSelectedItem;

  final double? initialValue;
  String selectedItem = "";
  double numberInputValue = 0.0;
  final void Function(String)? onMaterialChanged;
  final void Function(double)? onQuantityChanged;
  final void Function()? onDeleteTap;

  CompositionItem(
      this.listOfNames, this.dropDownLabel, this.numberInputLabel,
      {Key? key,
      this.onDeleteTap,
      this.onMaterialChanged,
      this.onQuantityChanged, this.initialSelectedItem, this.initialValue, this.listOfSuffixes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    String? currentSuffix;

    if(listOfSuffixes!=null){

    }
    return Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: DropdownSearch<String>(
                    mode: Mode.BOTTOM_SHEET,
                    //showSelectedItems: true,
                    showSearchBox: true,
                    items: listOfNames,
                    onChanged: (value) {
                      onMaterialChanged!(value!);
                    },
                    popupItemDisabled: (String s) => s.startsWith('I'),
                    selectedItem: initialSelectedItem ?? listOfNames.first)),
            horizontalSpaceSmall,
            Expanded(
              flex: 3,
              child: TextFormField(
                initialValue: initialValue!=null ? initialValue.toString() : null,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (value) {
                    onQuantityChanged!(double.parse(value));
                  },
                  decoration: InputDecoration(
                    labelText: numberInputLabel,
                    suffix: const Text("cm"),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(),
                    ),
                  )),
            ),
            Expanded(
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: onDeleteTap,
              ),
            ),
          ],
        ));
  }
}
