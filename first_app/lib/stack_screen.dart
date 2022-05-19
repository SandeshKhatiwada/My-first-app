import 'dart:ui';

import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  int ourCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            ourCurrentIndex = index;
            print("Current index: $ourCurrentIndex");
            setState(() {});
          },
          currentIndex: ourCurrentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Discover"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Inbox"),
            //BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          ]),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/wall.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 50,
                width: 200,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 10,
              bottom: 100,
              child: Container(
                height: 400,
                width: 80,
                color: Colors.red,
              ),
            ),
            Positioned(
              left: 15,
              bottom: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
