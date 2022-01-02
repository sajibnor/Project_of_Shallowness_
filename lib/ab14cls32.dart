import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Drawerab14 extends StatelessWidget {
  final i = Size.square(32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.orange),
        // leading: Icon(Icons.ac_unit),
        actions: [
          Icon(
            Icons.menu_open,
            color: Colors.purple,
          ),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit)
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),

      // showUnselectedLabels: true,
      // // fixedColor: Colors.amber,
      // selectedItemColor: Colors.blue,
      // backgroundColor: Colors.brown,
      // currentIndex: 2,
      // items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "School"),
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Moll"),
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
      // ]),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              onDetailsPressed: () {
                // SnackBar(content: Text("hello"));
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("hello")));
              },
              currentAccountPictureSize: Size.square(72),
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              accountName: Text("Admin"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNWigmdDEDu3pqobU1BI3nGjFC8gm-3po72w&usqp=CAU"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNWigmdDEDu3pqobU1BI3nGjFC8gm-3po72w&usqp=CAU"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNWigmdDEDu3pqobU1BI3nGjFC8gm-3po72w&usqp=CAU"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNWigmdDEDu3pqobU1BI3nGjFC8gm-3po72w&usqp=CAU"),
                ),
              ],
              currentAccountPicture: Container(
                color: Colors.black,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNWigmdDEDu3pqobU1BI3nGjFC8gm-3po72w&usqp=CAU"),
                ),
              ),
              accountEmail: Text("uotlokk@gmail.com"),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 25,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: Colors.black12,
                onTap: () {},
                title: Text("Profile"),
                leading: Icon(Icons.supervised_user_circle_sharp),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            ListTile(
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("Winter Collection"),
                leading: Icon(Icons.color_lens_rounded)),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text("Profile"),
              leading: Icon(Icons.supervised_user_circle_sharp),
            ),
            ListTile(
                title: Text("Winter Collection"),
                leading: Icon(Icons.color_lens_rounded)),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3,
              height: 3,
              color: Colors.cyan,
            ),
            ListTile(
              title: Text("Popular"),
              leading: Icon(Icons.star_border),
            ),
            ListTile(
                title: Text("Flash Sales"),
                leading: Icon(Icons.settings_cell_outlined)),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3,
              height: 3,
              color: Colors.cyan,
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
