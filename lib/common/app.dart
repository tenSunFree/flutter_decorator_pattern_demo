import 'package:flutter/material.dart';
import 'package:flutter_decorator_pattern_demo/meal/view/meal_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          unselectedWidgetColor: Colors.black,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MealScreen());
}
