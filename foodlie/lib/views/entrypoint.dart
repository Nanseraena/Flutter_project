import 'package:flutter/material.dart';
import 'package:foodlie/constants/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container( 
            height: height,
            width: width,
            color: kPrimary,
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'cart'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),


                  ], // Add a child widget here
                ),
              ),
            ),
            ],
        ),
      );
  }
}