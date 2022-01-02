import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutterdemo/page1.dart';
import 'package:myflutterdemo/page2.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:myflutterdemo/page3.dart';
import 'package:myflutterdemo/s.dart';

class Ab13Day39 extends StatelessWidget {
  var pages = [
    Page1(),
    Container(
      color: Colors.lime,
    ),
    Page2(),
    Page3(),
    S()
  ];

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
        initialPage: 3,
        // enableLoop: false,
        waveType: WaveType.liquidReveal,
        fullTransitionValue: 400,
        disableUserGesture: false,
        positionSlideIcon: 0.75,
        
        slideIconWidget: Icon(Icons.arrow_back_ios),
        pages: pages);
  }
}
