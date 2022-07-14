import 'package:bis/ui/tools/calculator_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:stacked/stacked.dart';

class CalculatorView extends StatefulWidget {

  final bool isRapid;
  const CalculatorView({Key? key, required this.isRapid, }) : super(key: key);

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String input = "";
  String output = "";

  final List<String> calButtonsList = [
    'AC',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+'

  ];

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(
        fontSize: 28,
        color: Color(0xffffffff),
        fontWeight: FontWeight.normal);

    return ViewModelBuilder<CalculatorViewModel>.reactive(
        builder: (context, viewModel, child) => Scaffold(
            appBar: widget.isRapid ? AppBar() : null,
            body:Column(
      children: <Widget>[
        Expanded(
          child: Row(children : [
            widget.isRapid ? Expanded(child: IconButton(icon: Icon(Icons.check), onPressed: () { viewModel.goBack(double.parse(output)) ;},),) : Text(""),
            Expanded(
              flex: 4,
              child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  input,
                  style: style.copyWith(
                       fontSize: 16),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  output,
                  style: style.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
            )
    ]
          ),
        ),
        Expanded(
          flex: 5,
          child: GridView.builder(
              itemCount: calButtonsList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                // Clear Button

                if (index == 0) {
                  return CalButton(
                      onTapped: () {
                        setState(() {
                          input = '';
                          output = '0';
                        });
                      },
                      value: calButtonsList[index],
                      color: Colors.greenAccent,
                      btnTextStyle: style);
                }

                // +/- button
                else if (index == 1) {
                  return CalButton(
                    value: calButtonsList[index],
                    color: Colors.greenAccent,
                    btnTextStyle: style,
                    onTapped: () {
                      setState(() {
                        if (input.contains("-")) {
                          String data = input.replaceAll("-", "+");
                          output = data;
                        } else if (input.startsWith("+", 0)) {
                          String data = input.replaceFirst("+", "-", 0);
                          output = data;
                        } else if (input.isEmpty) {
                        } else {}
                      });
                    },
                  );
                }
                // % Button
                else if (index == 2) {
                  return CalButton(
                    onTapped: () {
                      setState(() {
                        input += calButtonsList[index];
                      });
                    },
                    value: calButtonsList[index],
                    color: Colors.greenAccent,
                    btnTextStyle: style,
                  );
                }
                // Delete Button
                else if (index == 3) {
                  return CalButton(
                    onTapped: () {
                      setState(() {
                        input =
                            input.substring(0, input.length - 1);
                      });
                    },
                    value: calButtonsList[index],
                    color: const Color(0xffEE2C2C),
                    btnTextStyle: style,
                  );
                }
                // Equal_to Button
                else if (index == 18) {
                  return CalButton(
                    onTapped: () {
                      setState(() {
                        equalsTo();
                      });
                    },
                    value: calButtonsList[index],
                    color: Colors.greenAccent,
                    btnTextStyle: style,
                  );
                }

                //  other buttons
                else {
                  return CalButton(
                    onTapped: () {
                      setState(() {
                        input += calButtonsList[index];
                      });
                    },
                    value: calButtonsList[index],
                    color: isOperator(calButtonsList[index])
                        ? const Color(0xff104E8B)
                        : Colors.grey[200],
                    btnTextStyle: style.copyWith(
                      color: isOperator(calButtonsList[index])
                          ? const Color(0xffffffff)
                          : const Color(0xff000000),
                    ),
                  );
                }
              }),
        ),
      ],
    )),viewModelBuilder: () => CalculatorViewModel(),
    onModelReady: (viewModel) {},
    disposeViewModel: false,
    fireOnModelReadyOnce: true,
    );
  }

  displayBtn(String value, int index, Color color) {
    TextStyle style = const TextStyle(fontSize: 16);

    return CalButton(
      onTapped: () {
        setState(() {
          input += calButtonsList[index];
        });
      },
      value: value,
      color: color,
      btnTextStyle: style,
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  equalsTo() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(input.replaceAll('x', '*'));
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      output = eval.toString();
    } catch (e) {
      output = "Error";
    }
  }
}

// Buttons
class CalButton extends StatelessWidget {
  final Color? color;
  final String? value;
  final TextStyle? btnTextStyle;
  final VoidCallback? onTapped;

  const CalButton(
      {Key? key,
        required this.color,
        required this.value,
        required this.btnTextStyle,
        this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body :InkWell(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: color
          ),
          child: Center(
            child: Text(
              value!,
              textAlign: TextAlign.center,
              style: btnTextStyle,
            ),
          ),
        ),
      ),
      onTap: onTapped!,
    ));
  }
}

// Unit Test
class Validate{

  static addNo(int v1,int v2){
    return v1+v2;
  }
}
