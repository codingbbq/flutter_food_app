import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          // Selected Tag
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.black,
            ),
            child: Text(
              "Salads",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),

          // Not selected tag
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey[300],
            ),
            child: Text(
              "Soups",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18.0,
              ),
            ),
          ),

          // Not selected tag
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey[300],
            ),
            child: Text(
              "Grilled",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
