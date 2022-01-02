import 'package:flutter/material.dart';
import 'package:myflutterdemo/mydrawer.dart';
import 'package:myflutterdemo/second.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class TabBarDemo extends StatelessWidget {
  var name = "Admin";
  var usermail = "outlook@gmail.com";
  var i = Size.square(92.0);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          
          drawer: Drawer(),
          appBar: NewGradientAppBar(
            // iconTheme: IconThemeData(color: Colors.red),
            // backgroundColor: Colors.cyan,
            gradient: LinearGradient(colors: [Colors.green, Colors.red]),
            title: Text("My TabBar"),
            centerTitle: true,
            actions: [Icon(Icons.add_circle_outline_sharp)],

            bottom: TabBar(
              labelColor: Colors.white,
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.red,
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(
                  child: Icon(Icons.home_outlined),
                ),
                Tab(
                  child: Icon(Icons.umbrella),
                ),
                Tab(
                  child: Icon(Icons.airline_seat_recline_normal),
                ),
                Tab(
                  child: Icon(Icons.traffic_outlined),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              TabBar(
                labelColor: Colors.white,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.red,
                physics: BouncingScrollPhysics(),
                tabs: [
                  Tab(
                    child: Icon(Icons.home_outlined),
                  ),
                  Tab(
                    child: Icon(Icons.umbrella),
                  ),
                  Tab(
                    child: Icon(Icons.airline_seat_recline_normal),
                  ),
                  Tab(
                    child: Icon(Icons.traffic_outlined),
                  )
                ],
              ),
              TabBarView(
                children: [
                  Center(
                    child: Container(
                      child: Text("I'am one"),
                    ),
                  ),
                  Ss(),
                  Center(
                    child: Container(
                      child: Text("I'am three"),
                    ),
                  ),
                  Lq()
                ],
              ),
            ],
          ),
        ));
  }
}

class Lq extends StatelessWidget {
  final pages = [
    Container(
      color: Colors.purple,
    ),
    Ss(),
    Container(
      color: Colors.green,
    ),
    Ss(),
    Container(
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(pages: pages);

    // LiquidSwipe(
    //     positionSlideIcon: .5,
    //     initialPage: 2,
    //     enableSideReveal: false,
    //     enableLoop: false,
    //     fullTransitionValue: 50,
    //     disableUserGesture: false,
    //     slideIconWidget: Icon(Icons.arrow_forward_ios),
    //     pages: pages);
  }
}

class Swithcdemo extends StatefulWidget {
  const Swithcdemo({Key? key}) : super(key: key);

  @override
  _SwithcdemoState createState() => _SwithcdemoState();
}

class _SwithcdemoState extends State<Swithcdemo> {
  bool istrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Switch(
            value: istrue,
            onChanged: (t) {
              setState(() {
                istrue = t;
              });
            }),
      ),
    );
  }
}
