import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 111),
        color: Colors.deepOrange,
        items: [
          Icon(Icons.ac_unit),
          Icon(Icons.golf_course_outlined),
          Icon(Icons.home),
          Icon(Icons.school),
        ],
      ),
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Container(
        child: Text("Two"),
      ),
    );
  }
}
