import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myflutterdemo/apis.dart';
import 'package:http/http.dart' as http;

class Apiui extends StatefulWidget {
  @override
  State<Apiui> createState() => _ApiuiState();
}

class _ApiuiState extends State<Apiui> {
  // const Apiui({ Key? key }) : super(key: key);

  Api api = Api();
  var data;
  Future getapidata() async {
    var res = await http.get(Uri.parse(
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));

    setState(() {
      var decode = jsonDecode(res.body);
      data = decode;
    });
  }

  @override
  void initState() {
    // getdata2();
    // datalist;
    super.initState();
    this.getapidata();
    this.getdata();
  }

  late List datalist = [];

  Future getdata() async {
    datalist = await api.getalbum();
    // setState(() {
    //   data = datalist;
    // });

    // print(datalist);
  }

  // getdata2() async {
  //   return datalist = await getalbum2();

  //   // print(datalist);
  // }

  // Future getalbum2() async {
  //   var url = await http.get(Uri.https(
  //       "makeup-api.herokuapp.com", "api/v1/products.json?brand=maybelline"));
  //   if (url.statusCode == 200) {
  //     return jsonDecode(url.body);
  //   } else {
  //     throw Text("not found....");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print(data);
    print(datalist);
    print(datalist);
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Container(
                child: TextButton(onPressed: getdata, child: Text("datalist"))),
            ...datalist.map((e) => Column(
                  children: [
                    Text(e["title"]),
                    // Text(e["id"]),
                  ],
                ))
          ],
        ));
  }
}
