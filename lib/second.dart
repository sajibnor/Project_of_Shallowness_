import 'package:flutter/material.dart';

class Ss extends StatelessWidget {
  const Ss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,

          decoration: BoxDecoration(
              gradient: SweepGradient(
                  // startAngle: .3,
                  // endAngle: .7,
                  center: Alignment.center,
                  tileMode: TileMode.decal,
                  colors: [Colors.pink, Colors.teal, Colors.lime, Colors.blue])

              //  RadialGradient(
              //     stops: [
              //       .2,
              //       .4,
              //       .6,
              //     ],
              //     center: Alignment(-.4, -.6),
              //     focal: Alignment(-0.2, -0.2),
              //     focalRadius: 0.1,
              //     tileMode: TileMode.repeated,
              //     colors: [Colors.yellow, Colors.brown, Colors.green])
              //  LinearGradient(
              //     end: Alignment.topRight,
              //     begin: Alignment.bottomLeft,
              //     stops: [
              //       0.2,
              //       0.2,
              //       .2,
              //       0.2,
              //       0.4
              //     ],

              //     colors: [
              //       Colors.green,
              //       Colors.red,
              //       Colors.green,
              //       Colors.yellow,
              //       Colors.black,
              //     ]),
              ),
          child: Text("Hello Bangladesh"),
          // color: Colors.amber,
        ),
      ),
    );
  }
}
