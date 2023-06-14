import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:my_calculator/utils/constants.dart';
import 'package:my_calculator/view_model/calculator_view_model.dart';
import 'package:provider/provider.dart';

import '../components/buttons.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CalculatorViewModel calculatorViewModel =
        context.watch<CalculatorViewModel>();
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text('Calculator'),
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      // ),

      // // drawer: Drawer(),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          calculatorViewModel.mainText,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 30,
                            color: calculatorViewModel.mainTextColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: calculatorViewModel.buttonColor.numberColor,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (calculatorViewModel.mainText.isNotEmpty) {
                        calculatorViewModel.backButton();
                      }
                    },
                    child: Icon(
                      Icons.backspace_outlined,
                      color: calculatorViewModel.mainText.isNotEmpty
                          ? calculatorViewModel.buttonColor.operatorColor
                          : calculatorViewModel.buttonColor.operatorColor
                              .withOpacity(0.5),
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1,
                color: Colors.white24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: 'C',
                  textColor: calculatorViewModel.buttonColor.singleColor,
                  onPressed: () {
                    calculatorViewModel.clear();
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '( )',
                  textColor: calculatorViewModel.buttonColor.operatorColor,
                  onPressed: () {
                    calculatorViewModel.callback('( )');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '%',
                  textColor: calculatorViewModel.buttonColor.operatorColor,
                  onPressed: () {
                    calculatorViewModel.callback('%');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '/',
                  textColor: calculatorViewModel.buttonColor.operatorColor,
                  onPressed: () {
                    calculatorViewModel.callback('/');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '7',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('7');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '8',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('8');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '9',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('9');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: 'x',
                  textColor: calculatorViewModel.buttonColor.operatorColor,
                  onPressed: () {
                    calculatorViewModel.callback('x');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '4',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('4');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '5',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('5');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '6',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('6');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '-',
                  textColor: calculatorViewModel.buttonColor.operatorColor,
                  onPressed: () {
                    calculatorViewModel.callback('-');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '1',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('1');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '2',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('2');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '3',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('3');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '+',
                  textColor: calculatorViewModel.buttonColor.operatorColor,
                  onPressed: () {
                    calculatorViewModel.callback('+');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '+/-',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('+/-');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '0',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('0');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.backgroundColor,
                  buttonText: '.',
                  textColor: calculatorViewModel.buttonColor.numberColor,
                  onPressed: () {
                    calculatorViewModel.callback('.');
                  },
                ),
                CalculatorButton(
                  buttonColor: calculatorViewModel.buttonColor.operatorColor,
                  buttonText: '=',
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
