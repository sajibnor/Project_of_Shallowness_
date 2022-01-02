import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViebYoutube extends StatefulWidget {
  const WebViebYoutube({Key? key}) : super(key: key);

  @override
  _WebViebYoutubeState createState() => _WebViebYoutubeState();
}

class _WebViebYoutubeState extends State<WebViebYoutube> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   if(Platform.script)
  // }

  var i = "http://oldyoungsilvermagic.neverssl.com/online";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: WebView(javascriptMode: JavascriptMode.unrestricted, initialUrl: i
            // "https://drive.google.com/drive/folders/1vfJ0KLNrMdisKDF8AtZH_jEl9vK25noR",
            ),
      ),
    );
  }
}
