import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_food_app/models/list_dish.dart';

class DishDetails extends StatefulWidget {
  @override
  _DishDetailsState createState() => _DishDetailsState();
}

class _DishDetailsState extends State<DishDetails> {
  int _currentPage = 0;

  Timer _timer;

  PageController _dishViewController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = new Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _dishViewController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ListOfDishes item = ModalRoute.of(context).settings.arguments;

    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280,
            child: PageView.builder(
              controller: _dishViewController,
              itemCount: item.dishImage.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  item.dishImage[index],
                  fit: BoxFit.contain,
                );
              },
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          // Page View Navigation
          SizedBox(
            height: 10.0,
          ),

          Text(
            item.dishCategory,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.dishName,
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
            item.dishDetailedDescription,
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
                item.dishDeliveryTime,
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
                    r'$' + item.dishPrice,
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
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Positioned(
                          top: 12.0,
                          right: 15,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.red[600],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
