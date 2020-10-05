import 'package:flutter/material.dart';

class DishItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(
          right: 20.0,
          top: 35.0,
          bottom: 20.0,
        ),
        padding: EdgeInsets.only(
          top: 80.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(60.0),
        ),
        child: Column(
          children: [
            Text(
              "Mixed Salaad",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Mix Vegitables",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              r"$32.00",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      // Image
      Positioned(
        top: 5.0,
        left: 25.0,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 6.0,
                  spreadRadius: 1.0,
                  color: Colors.grey[400],
                )
              ]),
        ),
      ),

      Positioned(
        bottom: -10.0,
        left: 50.0,
        child: IconButton(
          iconSize: 40.0,
          onPressed: () {},
          icon: Icon(
            Icons.add_circle,
            color: Colors.black,
          ),
        ),
      ),
    ]);
  }
}
