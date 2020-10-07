// Individual Dish page

import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/DishDetails.dart';

class Dish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 30.0,
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            // Show Dish Carousel
            //DishCarousel();
            SizedBox(
              height: 10.0,
            ),
            DishDetails(),
          ],
        ),
      ),
    );
  }
}
