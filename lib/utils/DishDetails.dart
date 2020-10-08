import 'package:flutter/material.dart';

class DishDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mediterranean",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Quinoa Salad",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),

          SizedBox(
            height: 15.0,
          ),

          // Salaad description
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500.",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[700],
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          // Deliver time
          Row(
            children: [
              Text(
                "Deliver time",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Icon(
                Icons.access_time,
                color: Colors.grey[700],
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "25 Mins",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),

          // Total Price and Cart
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Total price",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    r"$24.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Transform.rotate(
                angle: 120.0,
                child: Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Transform.rotate(
                    angle: -120.0,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
