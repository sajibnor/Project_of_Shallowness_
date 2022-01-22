import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: M(),
  ));
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class M extends StatelessWidget {
  const M({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              )
            ],
          ),
        ],
      ),
    );
  }
}
