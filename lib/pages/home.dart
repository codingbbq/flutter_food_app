// Food App Home Page

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 20.0,
          backgroundColor: Colors.black,
          iconSize: 30,
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
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              // For the Navigation
              Placeholder(fallbackHeight: 50),
              SizedBox(height: 10.0),
              // For Title and Subtitle
              Placeholder(fallbackHeight: 60),
              SizedBox(height: 10.0),
              // For Tags
              Placeholder(fallbackHeight: 80, color: Colors.grey),
              SizedBox(
                height: 10.0,
              ),

              // For Dish of the Day
              Placeholder(
                fallbackHeight: 100,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 10.0,
              ),

              // For Horizontal scrolling Menu items
              Placeholder(
                fallbackHeight: 100,
                color: Colors.green,
              ),

              SizedBox(
                height: 10.0,
              ),

              // For Floating Navigation Menu at bottom
              Placeholder(
                fallbackHeight: 50,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
