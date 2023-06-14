import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/constants.dart';

class CalculatorViewModel extends ChangeNotifier {
  ColorContants buttonColor = ColorContants();
  String _mainText = '';
  int firstNumber = 0;
  int secondNumber = 0;
  String result = '';
  String operator = '';
  String displayText = '';
  String preOper = '';
  Color? mainTextColor;

  String get mainText => _mainText;

  void clear() {
    _mainText = '';

    notifyListeners();
  }

  void backButton() {
    List<String> digits = _mainText.split('');
    // print(digits);
    digits.removeLast();
    // print(digits);
    _mainText = digits.join();
    // print(_mainText);

    notifyListeners();
  }

  void callback(String btnValue) {
    print(btnValue);
    mainTextColor = buttonColor.operatorColor;

    List<String> num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    List<String> operators = ["+", "-", "x", "/"];

    if (operators.contains(btnValue)) {
      operator = btnValue;
      print("operator $operator");
    }

    if (num.contains(btnValue)) {
      mainTextColor = buttonColor.numberColor;
    } else if (_mainText.isNotEmpty && !operators.contains(btnValue)) {
      firstNumber = int.parse(_mainText);
      print("first $firstNumber");
      _mainText = '';
    } else if (_mainText.isNotEmpty && operators.contains(btnValue)) {
      List<String> digits = _mainText.split(btnValue);

      secondNumber = int.parse(digits.removeLast());
      print("second $secondNumber");
    }

    // if (_mainText.isNotEmpty && operators.contains(btnValue)) {
    //   _mainText.split(btnValue).removeLast();
    //   print("++++++ $_mainText");
    //   secondNumber = int.parse(_mainText.split(btnValue).removeLast());
    //   print("+------ $secondNumber");
    // }
    // if (btnValue == '+' ||
    //     btnValue == '-' ||
    //     btnValue == 'x' ||
    //     btnValue == '/') {
    //   if (firstNumber == 0) {
    //     firstNumber = int.parse(displayText); // result
    //   } else {
    //     secondNumber = int.parse(displayText);
    //   }
    // }

    _mainText = _mainText + btnValue;

    // if (btnValue == 'AC') {
    //   _mainText = '0';
    //   displayText = '';
    //   firstNumber = 0;
    //   secondNumber = 0;
    //   result = '0';
    //   preOper = '';
    //   operators = '';
    // } else if (btnValue == '+/-') {
    //   if (displayText[0] != '-') {
    //     displayText = '-' + displayText;
    //   } else {
    //     displayText = displayText.substring(1);
    //   }
    //   result = displayText;
    // } else if (btnValue == '+' ||
    //     btnValue == '-' ||
    //     btnValue == 'x' ||
    //     btnValue == '/' ||
    //     btnValue == '=') {
    //   if (firstNumber == 0) {
    //     firstNumber = int.parse(displayText); // result
    //   } else {
    //     secondNumber = int.parse(displayText);
    //   }

    //   if (operators == '+') {
    //     result = (firstNumber + secondNumber).toString();
    //   } else if (operators == '-') {
    //     result = (firstNumber - secondNumber).toString();
    //   } else if (operators == 'x') {
    //     result = (firstNumber * secondNumber).toString();
    //   } else if (operators == '/') {
    //     result = (firstNumber / secondNumber).toString();
    //   } else if (operators == '%') {
    //     result = (firstNumber % secondNumber).toString();
    //   }

    //   operators = btnValue;
    //   preOper = operators;
    //   displayText = '';
    // } else if (btnValue == '=' && operators == '=') {
    //   //secondNumber = int.parse(displayText);

    //   if (preOper == '+') {
    //     result = (firstNumber + secondNumber).toString();
    //   } else if (preOper == '-') {
    //     result = (firstNumber - secondNumber).toString();
    //   } else if (preOper == 'x') {
    //     result = (firstNumber * secondNumber).toString();
    //   } else if (preOper == '/') {
    //     result = (firstNumber / secondNumber).toString();
    //   } else if (preOper == '%') {
    //     result = (firstNumber % secondNumber).toString();
    //   }
    // } else {
    //   displayText = displayText + btnValue;
    //   result = displayText;
    // }
    notifyListeners();
    // setState(() {
    //   mainText = result;
    // });
  }
}
