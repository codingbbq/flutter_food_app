import 'package:flutter/material.dart';
import 'package:flutter_food_app/pages/dish.dart';
import 'package:flutter_food_app/pages/home.dart';

void main() {
  runApp(FlutterFoodApp());
}

class FlutterFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/dish': (context) => Dish()},
    );
  }
}
