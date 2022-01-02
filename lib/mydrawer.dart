import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.i,
    required this.name,
    required this.usermail,
  }) : super(key: key);

  final Size i;
  final String name;
  final String usermail;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: SafeArea(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              // otherAccountsPicturesSize: i,
              decoration: BoxDecoration(color: Colors.yellow),
              otherAccountsPictures: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEr1x3lyu2XArK9iNXhGLC_hHzbU6V0LgMEQ&usqp=CAU"),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEr1x3lyu2XArK9iNXhGLC_hHzbU6V0LgMEQ&usqp=CAU"),
                ),
              ],
              currentAccountPictureSize: i,
              currentAccountPicture: Container(
                // color: Colors.black,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEr1x3lyu2XArK9iNXhGLC_hHzbU6V0LgMEQ&usqp=CAU"),
                ),
              ),
              accountName: Text(name),
              accountEmail: Text(usermail),
            ),
            ListTile(
              onTap: () {},
              selected: true,
              // selectedTileColor: Colors.red,
              dense: false,
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.wifi_protected_setup_outlined),
              title: Text("Popular"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.baby_changing_station_rounded,
              ),
              title: Text("Essentials"),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3,
              height: 3,
              color: Colors.amber,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.screen_search_desktop),
              title: Text("Bakery & Snacks"),
            ),
            ListTile(
              leading: Icon(Icons.umbrella),
              title: Text("Beauty & Hygiene"),
            ),
            ListTile(
              leading: Icon(Icons.wine_bar_outlined),
              title: Text("Beverages"),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3,
              height: 3,
              color: Colors.amber,
            ),
            ListTile(
              leading: Icon(Icons.wb_incandescent),
              title: Text("FeedBack"),
            ),
            ListTile(
              leading: Icon(Icons.h_plus_mobiledata_outlined),
              title: Text("About Us"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: Text("Exit"),
            ),
          ],
        ),
      ),
    );
  }
}
