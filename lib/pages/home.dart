// Food App Home Page

import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/HomePageTitle.dart';
import 'package:flutter_food_app/utils/ListOfDishes.dart';
import 'package:flutter_food_app/utils/SelectedDish.dart';
import 'package:flutter_food_app/utils/tags.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 30.0,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
            iconSize: 30.0,
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 10.0,
        ),
        color: Colors.white,
        child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 25,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    semanticLabel: "Home",
                  ),
                  title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet,
                    semanticLabel: "Balance",
                  ),
                  title: Text("Balance")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    semanticLabel: "Chat",
                  ),
                  title: Text("Chat")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    semanticLabel: "Profile",
                  ),
                  title: Text("Profile"))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              // For Title and Subtitle
              HomePageTitle(),

              SizedBox(height: 10.0),
              // For Tags
              Tags(),

              SizedBox(
                height: 20.0,
              ),

              // For Dish of the Day
              SelectedDish(),

              SizedBox(
                height: 20.0,
              ),

              // For Horizontal scrolling Menu items
              ListOfDishes(),
            ],
          ),
        ),
      ),
    );
  }
}
