import 'package:flutter/material.dart';
import 'package:my_calculator/view_model/calculator_view_model.dart';
import 'package:provider/provider.dart';

import 'calculator/calculator_view.dart';

void main() {
  runApp(const MyApp());
}

//final getX = GetStorage();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculatorViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CalculatorScreen(),
      ),
    );
  }
}
