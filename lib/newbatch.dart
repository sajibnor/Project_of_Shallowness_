import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Imagepic(),
//   ));
// }

class Imagepic extends StatefulWidget {
  @override
  State<Imagepic> createState() => _ImagepicState();
}

class _ImagepicState extends State<Imagepic> {
//  final XFile? img;
  var j;
  // File i;

  File? _image;

  Future imgpik() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgpikc() async {
    var imagePicker = await ImagePicker().pickImage(
        source: ImageSource.camera, preferredCameraDevice: CameraDevice.front);
    setState(() {
      // img = imagePicker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Row(
                      children: [
                        Container(
                          color: Colors.amber,
                          height: 80,
                        )
                      ],
                    ),
                  );
                },
                child: Icon(Icons.image)),
            FloatingActionButton(
              onPressed: imgpik,
              child: Icon(Icons.image_search),
            ),
            FloatingActionButton(
              onPressed: imgpikc,
              child: Icon(Icons.camera),
            ),
            _image != null ? Image.file(_image!) : Text("data")
          ],
        ),
      ),
    );
  }
}
