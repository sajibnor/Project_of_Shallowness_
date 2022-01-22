import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            )
          ],
        ),
        body: Column(
          children: [
            Text(
              "data",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Text("data"),
            Icon(Icons.home),
          ],
        )),
  ));
}
