import 'package:flutter/material.dart';

class SelectedDish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 15.0,
          ),
          padding: EdgeInsets.fromLTRB(160, 20, 10, 20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(70.0),
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chicken Salaad",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Chicken and Avocado",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    r"$32.00",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                iconSize: 40.0,
                icon: Icon(
                  Icons.add_circle,
                ),
                color: Colors.black,
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150.0),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
