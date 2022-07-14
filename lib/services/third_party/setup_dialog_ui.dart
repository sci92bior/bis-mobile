import 'package:bis/app/app.locator.dart';
import 'package:bis/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

enum DialogType { Basic, Form, Generic }

void setupDialogUi() {
  var dialogService = locator<DialogService>();

  final builders = {
    DialogType.Basic: (context, sheetRequest, completer) =>
        _BasicDialog(request: sheetRequest, completer: completer),
    DialogType.Generic: (context, sheetRequest,
        Function(DialogResponse<GenericDialogResponse>) completer) =>
        _GenericDialog(
          request: sheetRequest,
          completer: completer,
        ),
    DialogType.Form: (context, sheetRequest, completer) =>
        _FormCustomDialog(dialogRequest: sheetRequest, onDialogTap: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

class _FormCustomDialog extends StatelessWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;
  const _FormCustomDialog({
    Key? key,
    required this.dialogRequest,
    required this.onDialogTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    if(dialogRequest.description!=null) {
      controller.text = dialogRequest.description!;
    }
    return Dialog(
      child:Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kcMediumGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            dialogRequest.title!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            // Complete the dialog when you're done with it to return some data
            onTap: () =>
                onDialogTap(DialogResponse(data: [controller.text])),
            child: Container(
              child: dialogRequest.showIconInMainButton!
                  ? Icon(Icons.check_circle)
                  : Text(dialogRequest.mainButtonTitle!),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kcButtonColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class _BasicDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const _BasicDialog({Key? key, required this.request, required this.completer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              request.title!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              request.description!,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => completer(DialogResponse()),
              child: Container(
                child: request.showIconInMainButton!
                    ? Icon(Icons.check_circle)
                    : Text(request.mainButtonTitle!),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GenericDialogRequest {
  const GenericDialogRequest({
    this.message = 'Hello World',
  });

  final String message;
}

class GenericDialogResponse {
  const GenericDialogResponse({
    this.message = 'Hello World',
  });

  final String message;
}

class _GenericDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse<GenericDialogResponse>) completer;

  const _GenericDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              request.title ?? 'Generic Dialog',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              request.description!,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => completer(
                DialogResponse(data: GenericDialogResponse()),
              ),
              child: Container(
                child: request.showIconInMainButton!
                    ? Icon(Icons.check_circle)
                    : Text(request.mainButtonTitle!),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}