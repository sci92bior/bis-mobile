import 'package:bis/shared/ui_helpers.dart';
import 'package:bis/ui/dumb_widgets/authentication_layout.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:bis/generated/l10n.dart';

import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'username'),
  FormTextField(name: 'password'),
])
class LoginView extends StatelessWidget with $LoginView {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        body: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.black
               ),
            child: AuthenticationLayout(
              busy: model.isBusy,
              onMainButtonTapped: model.saveData,
              validationMessage: model.validationMessage,
              title: 'Witamy',
              subtitle: 'Wpisz swoją nazwę użytkownika.',
              mainButtonTitle: I10n.of(context).loginButtonName,
              form: Column(
                children: [
                  TextField(
                    decoration:  InputDecoration(
                      labelText: I10n.of(context).username,
                      labelStyle: const TextStyle(color: Colors.white70),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70, width: 2.0),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: usernameController,
                  ),
                  verticalSpaceSmall,
                  TextField(
                    decoration: InputDecoration(
                      labelText: I10n.of(context).password,
                      labelStyle: const TextStyle(color: Colors.white70),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70, width: 2.0),
                      ),),
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    cursorColor: Colors.white,
                    controller: passwordController,
                  ),
                ],
              ),
            )),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
