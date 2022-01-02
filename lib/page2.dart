import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myflutterdemo/page1.dart';
import 'package:myflutterdemo/page3.dart';
import 'package:myflutterdemo/s.dart';
import 'package:myflutterdemo/second.dart';
import 'package:myflutterdemo/tabbar.dart';

class Page1 extends StatefulWidget {
  
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var i = 0;

  final Page = [Page3(), S(), Ss(), TabBarDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        // backgroundColor: Colors.transparent,
        bottomNavigationBar: ClipRect(
          
          child: CurvedNavigationBar(
            height: 75,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.purple,
            color: Colors.green,
            animationDuration: Duration(milliseconds: 111),
            index: i,
            onTap: (t) {
              setState(() {
                i = t;
              });
            },
            items: [
              Icon(Icons.home),
              Icon(Icons.school),
              Icon(Icons.highlight),
              Icon(Icons.umbrella_sharp),
            ],
          ),
        ),
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtkfFcuHEQz2BAGvYJiJVNvfYjT5fZ-8J-wg&usqp=CAU",
            fit: BoxFit.cover,
          ),
        ));
  }
}
