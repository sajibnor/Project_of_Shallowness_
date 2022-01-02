import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ab13d40 extends StatefulWidget {
  Ab13d40({Key? key}) : super(key: key);

  @override
  _Ab13d40State createState() => _Ab13d40State();
}

class _Ab13d40State extends State<Ab13d40> {
  var t = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.cyan,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://staticg.sportskeeda.com/editor/2021/06/abd59-16227546247181.jpg"),
                ),
                currentAccountPictureSize: Size.square(80),
                accountName: Text("Sun Adrason"),
                accountEmail: Text("outlook@gmail.com"),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://staticg.sportskeeda.com/editor/2021/06/abd59-16227546247181.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://staticg.sportskeeda.com/editor/2021/06/abd59-16227546247181.jpg"),
                  ),
                ],
                onDetailsPressed: () {
                  setState(() {
                    if (t == true) {
                      t = false;
                    } else {
                      t = true;
                    }
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  // enabled: true,
                  selected: t,

                  // hoverColor: Colors.blue,

                  // selectedTileColor: Colors.blue,
                  onTap: () {
                    setState(() {
                      t = false;
                    });
                  },
                  leading: Icon(Icons.folder),
                  title: Text("My File"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  selected: t,
                  onTap: () {
                    t = true;
                  },
                  leading: Icon(Icons.account_box),
                  title: Text("Share with me"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.alarm_on),
                  title: Text("Recent "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.delete),
                  title: Text("Trash"),
                ),
              ),
              Divider(
                thickness: 1,
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  // onTap: () {},
                  leading: Text("Labels"),
                  // title: Text("Trash"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.bookmark),
                  title: Text("Family"),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
    );
  }
}
