import 'package:flutter/material.dart';
import 'package:myflutterdemo/page1.dart';
import 'package:myflutterdemo/page2.dart';
import 'package:myflutterdemo/page3.dart';
import 'package:myflutterdemo/tabbar.dart';

class S extends StatefulWidget {
  const S({Key? key}) : super(key: key);

  @override
  _SState createState() => _SState();
}

class _SState extends State<S> {
  final Page = [Page1(), Page2(), Page3(), TabBarDemo()];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              setState(() {
                index = i;
              });
            },
            backgroundColor: Colors.amber,
            currentIndex: index,
            selectedLabelStyle: TextStyle(color: Colors.deepOrange),
            unselectedItemColor: Colors.amber,
            // showSelectedLabels: false,
            // selectedItemColor: Colors.purple,
            fixedColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.brown),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: "School",
                  backgroundColor: Colors.brown),
              BottomNavigationBarItem(
                  icon: Icon(Icons.pie_chart_rounded),
                  label: "Picture",
                  backgroundColor: Colors.brown),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  label: "Cool",
                  backgroundColor: Colors.brown),
            ]),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.brown),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJHlyOXu6C0VccmvVURe7SeDiUdcmj77Hnjg&usqp=CAU"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJHlyOXu6C0VccmvVURe7SeDiUdcmj77Hnjg&usqp=CAU"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJHlyOXu6C0VccmvVURe7SeDiUdcmj77Hnjg&usqp=CAU"),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJHlyOXu6C0VccmvVURe7SeDiUdcmj77Hnjg&usqp=CAU"),
                    ),
                  ],
                  currentAccountPicture: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJHlyOXu6C0VccmvVURe7SeDiUdcmj77Hnjg&usqp=CAU"),
                  ),
                  accountName: Text("Admin"),
                  accountEmail: Text("outlook@gmail.com"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.supervised_user_circle_rounded,
                    color: Colors.cyan,
                  ),
                  title: Text("User Profile"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.home,
                    color: Colors.cyan,
                  ),
                  title: Text("Home"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.school_outlined,
                    color: Colors.cyan,
                  ),
                  title: Text("Education"),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 3,
                  height: 3,
                  color: Colors.amber,
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.shop_two_outlined,
                    color: Colors.cyan,
                  ),
                  title: Text("Essentials"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.badge,
                    color: Colors.cyan,
                  ),
                  title: Text("Popular"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.mic_external_on_outlined,
                    color: Colors.cyan,
                  ),
                  title: Text("Baby products"),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 3,
                  height: 3,
                  color: Colors.amber,
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.shop_two_outlined,
                    color: Colors.cyan,
                  ),
                  title: Text("Essentials"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.badge,
                    color: Colors.cyan,
                  ),
                  title: Text("Popular"),
                ),
                ListTile(
                  trailing: Icon(Icons.star_border),
                  leading: Icon(
                    Icons.mic_external_on_outlined,
                    color: Colors.cyan,
                  ),
                  title: Text("Baby products"),
                ),
              ],
            ),
          ),
        ),
        // appBar: AppBar(
        //     leading: Icon(Icons.ac_unit),
        //     actions: [Icon(Icons.ac_unit)],
        //     iconTheme: IconThemeData(color: Colors.red)),
        body: Page[index]);
  }
}

class Pg extends StatelessWidget {
  const Pg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true,
      reverse: true,
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.teal,
        ),
      ],
    );
  }
}
