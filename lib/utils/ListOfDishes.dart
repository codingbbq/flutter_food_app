import 'package:flutter/material.dart';
import 'package:flutter_food_app/models/list_dish.dart';
import 'package:flutter_food_app/utils/DishItem.dart';

class ListOfDishes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [for (var item in listofdishes) DishItem()],
        ),
      ),
    );
  }
}
