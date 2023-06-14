import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed});
  String buttonText;
  Color buttonColor;
  Color textColor;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 80,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<CircleBorder>(CircleBorder()),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
