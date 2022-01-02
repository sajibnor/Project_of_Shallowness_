import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:myflutterdemo/page3.dart';
import 'package:myflutterdemo/s.dart';
import 'package:myflutterdemo/second.dart';
import 'package:myflutterdemo/tabbar.dart';

class CurveNavigation extends StatefulWidget {
  CurveNavigation({Key? key}) : super(key: key);

  @override
  _CurveNavigationState createState() => _CurveNavigationState();
}

class _CurveNavigationState extends State<CurveNavigation> {
  final Page = [Page3(), S(), Ss(), TabBarDemo()];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        // backgroundColor: Colors.blue,
        bottomNavigationBar: ClipRRect(
          child: CurvedNavigationBar(
            animationDuration: Duration(milliseconds: 411),
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.green,
            animationCurve: Curves.easeOutQuad,
            color: Colors.purple,
            index: index,
            height: 55,
            items: [
              Icon(Icons.home),
              Icon(Icons.cast_for_education),
              Icon(Icons.umbrella),
              Icon(Icons.mail_outline),
            ],
            onTap: (T) {
              setState(() {
                index = T;
                print(index);
              });
            },
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtkfFcuHEQz2BAGvYJiJVNvfYjT5fZ-8J-wg&usqp=CAU",
            fit: BoxFit.cover,
          ),
        )

        // Page[index]

        );
  }
}
