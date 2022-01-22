import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  final baseurl = "jsonplaceholder.typicode.com";

  Future getalbum() async {


    var responce = await http.get(Uri.https(baseurl, "albums"));  
   
    if (responce.statusCode == 200) {
      return jsonDecode(responce.body);
    } else {
      throw Text("not found...."); 
    }
  }
}
