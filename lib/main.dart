import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:myflutterdemo/ab13d39.dart';
import 'package:myflutterdemo/ab14cls32.dart';
import 'package:myflutterdemo/ab15d38.dart';
import 'package:myflutterdemo/ab16d44.dart';
import 'package:myflutterdemo/b.dart';
import 'package:myflutterdemo/cls15d39.dart';
import 'package:myflutterdemo/d.dart';
import 'package:myflutterdemo/dismis.dart';
import 'package:myflutterdemo/drw.dart';
import 'package:myflutterdemo/page1.dart';
import 'package:myflutterdemo/page2.dart';
import 'package:myflutterdemo/page3.dart';
import 'package:myflutterdemo/s.dart';
import 'package:myflutterdemo/sign.dart';
import 'package:myflutterdemo/tabbar.dart';
import 'package:myflutterdemo/web.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myflutterdemo/second.dart';

import 'chair (2).dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //    sajibmridha.nor 





  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegiDart(), 
  ));
}

class FirebaseDemo extends StatefulWidget {
  FirebaseDemo({Key? key}) : super(key: key);

  @override
  _FirebaseDemoState createState() => _FirebaseDemoState();
}

class _FirebaseDemoState extends State<FirebaseDemo> {
  FirebaseAuth auth = FirebaseAuth.instance;

// Wait for the user to complete the reCAPTCHA & for an SMS code to be sent.

  // FirebaseFirestore firestore = FirebaseFirestore.instance;

//  CollectionReference user= FirebaseFirestore.instance.collection('user');

  CollectionReference users = FirebaseFirestore.instance.collection('users2');
  Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection('users2').snapshots();

  Stream<QuerySnapshot> stream =
      FirebaseFirestore.instance.collection('users2').snapshots();
  Stream documentStream = FirebaseFirestore.instance
      .collection('users2')
      .doc('8X5YCd7SPbYkMcQywRL3')
      .snapshots();

  String name = "";
  String age = "";
  String gender = "";
  String address = "";
  upsing() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userName.text, password: userage.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  sinin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: "arry.allen@example.com",
              password: "SuperSecretPassword!");
      if (userCredential.user != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Pk")));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        print(e.email);
        print(e.message);
        print(e.credential);
        print(e.code);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  _adddata() {
    return users.add({
      "Gender": usergender.text,
      "Name": userName.text,
      "Age": userage.text,
      "Address": useraddress.text,
    });
  }

  var iddoc;
  var editId;
  var usname = "";
  var usage = "";
  var usg = "";
  var usad = "";

  TextEditingController userName = TextEditingController();
  TextEditingController userage = TextEditingController();
  TextEditingController useraddress = TextEditingController();
  TextEditingController usergender = TextEditingController();
  var userupdate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                  ),
                  controller: userName),
              TextField(
                  decoration: InputDecoration(labelText: "User age"),
                  controller: userage),
              TextField(
                  decoration: InputDecoration(labelText: "User Address"),
                  controller: useraddress),
              TextField(
                  decoration: InputDecoration(labelText: "User Gender"),
                  controller: usergender),
              // TextField(
              //   decoration: InputDecoration(labelText: "Update"),
              //   controller: userupdate,
              // ),
              Row(children: [
                ElevatedButton(onPressed: _adddata, child: Text("Click")),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        users.doc(editId).update({
                          "Age": userage.text,
                          "Name": userName.text,
                          "Gender": usergender.text,
                          "Address": useraddress.text
                        });
                      },

                      // users.doc("1uhq3YJvwvqXFbRg6rbS").set({
                      //   "Gender": "female",
                      //   "Name": "Akash",
                      //   "Age": userupdate.text,
                      // });
                      // },
                      child: Text(
                        "Update",
                        style: TextStyle(color: Colors.green),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () async {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                              email: userName.text, password: userage.text);

                      // try {
                      //   UserCredential userCredential = await FirebaseAuth
                      //       .instance
                      //       .createUserWithEmailAndPassword(
                      //           email: "barry.allen@example.com",
                      //           password: "SuperSecretPassword!");
                      // } on FirebaseAuthException catch (e) {
                      //   if (e.code == 'weak-password') {
                      //     print('The password provided is too weak.');
                      //   } else if (e.code == 'email-already-in-use') {
                      //     print('The account already exists for that email.');
                      //   }
                      // } catch (e) {
                      //   print(e);
                      // }
                    },
                    child: Text("Signup")),
                ElevatedButton(onPressed: () {}, child: Text("sing"))
              ]),

              InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              // StreamBuilder(
              //     stream: _stream,
              //     builder: (BuildContext context,
              //         AsyncSnapshot<QuerySnapshot> snapshot) {
              //       if (snapshot.hasError) {
              //         return Text("data is not found");
              //       }
              //       if (snapshot.connectionState == ConnectionState.waiting) {
              //         return CircularProgressIndicator();
              //       }
              //       return Container(
              //         height: 400,
              //         width: double.infinity,
              //         child: ListView.builder(
              //             itemCount: snapshot.data!.docs.length,
              //             itemBuilder: (context, index) => Card(
              //                   child: Column(
              //                     children: [
              //                       Text(snapshot.data!.docs[index]["Name"]),
              //                       Text(snapshot.data!.docs[index]["Age"]),
              //                       Text(snapshot.data!.docs[index]["Gender"]),
              //                       Text(snapshot.data!.docs[index]["Address"])
              //                     ],
              //                   ),
              //                 )),
              //       );
              //     }),

              StreamBuilder(
                  stream: stream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Data is not found");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      return CircularProgressIndicator();
                    }
                    return Container(
                      width: double.maxFinite,
                      height: 300,
                      child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            snapshot.data!.docs.forEach((element) {
                              iddoc = element.id;
                            });
                            print(iddoc);

                            return Container(
                              child: Card(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.delete)),
                                        // ElevatedButton(
                                        //     onPressed: () {
                                        //       userName.text = snapshot
                                        //           .data!.docs[index]["Name"];
                                        //       userage.text = snapshot
                                        //           .data!.docs[index]["Age"];
                                        //       usergender.text = snapshot
                                        //           .data!.docs[index]["Gender"];
                                        //       useraddress.text = snapshot
                                        //           .data!.docs[index]["Address"];
                                        //     },
                                        //     child: Text("Edite")),
                                      ],
                                    ),

                                    // ElevatedButton(
                                    //     onPressed: () {
                                    //       users.doc(iddoc).update(
                                    //           {"Name": " userupdate.text"});
                                    //     },
                                    //     child: Text("update")),
                                    Text(
                                        "${snapshot.data!.docs[index]["Name"]}"),
                                    Text(
                                        "${snapshot.data!.docs[index]["Age"]}"),
                                    Text(
                                        "${snapshot.data!.docs[index]["Gender"]}"),
                                    Text(
                                        "${snapshot.data!.docs[index]["Address"]}"),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                editId = snapshot
                                                    .data!.docs[index].id;
                                              });
                                              users.doc(editId).get().then(
                                                  (value) =>
                                                      usname = value["name"]);

                                              users.doc(editId).get().then(
                                                  (value) =>
                                                      {usname = value["Name"]});

                                              // snapshot.data!.docs[editId]["Age"];
                                              // var s = users.doc(editId).get().then(
                                              //     (value) => {
                                              //           uname = value["Name"],
                                              //           value["age"]
                                              //         });
                                              //  print(
                                              //     "Hell ${value["Name"]}")
                                              // );

                                              userName.text = snapshot
                                                  .data!.docs[index]["Name"];
                                              userage.text = snapshot
                                                  .data!.docs[index]["Age"];
                                              useraddress.text = snapshot
                                                  .data!.docs[index]["Address"];
                                              usergender.text = snapshot
                                                  .data!.docs[index]["Gender"];
                                            },
                                            child: Text("Edit")),
                                        ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                editId = snapshot
                                                    .data!.docs[index].id;
                                              });
                                              users
                                                  .doc(editId)
                                                  .delete()
                                                  .then((value) => Text(
                                                      "succecfully deleted"))
                                                  .onError(
                                                      (error, stackTrace) =>
                                                          Text("$error"));
                                            },
                                            child: Text("Delete")),
                                      ],
                                    ),
                                    Text(usname)
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  })

              // StreamBuilder(
              //     stream: stream,
              //     builder: (BuildContext context,
              //         AsyncSnapshot<QuerySnapshot> snapshot) {
              // if (snapshot.hasError) {
              //   return Text("Not found");
              // }
              // if (snapshot.connectionState == ConnectionState.waiting) {
              //   return CircularProgressIndicator();
              // }

              //   return Container(
              //     height: 500,
              //     width: double.maxFinite,
              //     child: ListView.builder(
              //         itemCount: snapshot.data!.docs.length,
              //         itemBuilder: (context, index) {
              //           snapshot.data!.docs.forEach((element) {
              //             iddoc = element.id;
              //           });
              //           return Card(
              //             child: Column(
              //               children: [
              //                 ElevatedButton(
              //                     onPressed: () {
              //                       users.doc(iddoc).delete().then(
              //                           (value) => Text("successfull"));
              //                     },
              //                     child: Text("Clear")),
              //                 Text("${snapshot.data!.docs[index]["Name"]}"),
              //                 Text("${snapshot.data!.docs[index]["Age"]}"),
              //                 Text(
              //                     "${snapshot.data!.docs[index]["Address"]}"),
              //                 Text(
              //                     "${snapshot.data!.docs[index]["Gender"]}")
              //               ],
              //             ),
              //           );
              //         }),
              //   );
              // })

              // StreamBuilder(
              //     stream: FirebaseFirestore.instance
              //         .collection('users2')
              //         .snapshots(),
              //     builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //       print(snapshot);
              //       if (snapshot.hasError) {
              //         return Text("hasError");
              //       }
              //       if (snapshot.connectionState == ConnectionState.waiting) {
              //         return CircularProgressIndicator();
              //       }
              //       // if (snapshot.connectionState == ConnectionState.active) {
              //       //   print("ConnectionState.done");
              //       //   return CircularProgressIndicator();
              //       // }
              //       return Container(
              //         color: Colors.amber,
              //         height: 300,
              //         width: double.infinity,
              //         child: ListView.builder(
              //           itemCount: snapshot.data!.docs.length,
              //           itemBuilder: (context, index) =>

              // snapshot.data.docs.foreach((id){
              //   iddoc=id.id;
              // });

              //               ListTile(
              //             title: Text("${snapshot.data!.docs[index]["name"]}"),
              //             leading: Text("${snapshot.data!.docs[index]["age"]}"),
              //             subtitle:
              //                 Text("${snapshot.data!.docs[index]["gender"]}"),
              //           ),
              //         ),
              //       );
              //     })
            ],
          ),
        ));
  }
}

class MyApp extends StatefulWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection('users').snapshots();

  String name = "";

  String age = "";
  String gender = "";
  _adduser() {
    return users.add(
      {"name": name, "age": age, "gender": gender},
    );
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final p = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.blue,
    ),
    S(),
    Container(
      color: Colors.blue,
    ),
  ];

  int i = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blue,
            // fixedColor: Colors.black,
            onTap: (t) {
              setState(() {
                i = t;
              });
            },
            currentIndex: i,
            selectedItemColor: Colors.amber[800],
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a"),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a"),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a"),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "a")
            ]),
        appBar: AppBar(),
        body: p.elementAt(i)
        //  LiquidSwipe(pages: p)
        //  Center(
        //   child: Container(
        //     child: ElevatedButton(
        //         onPressed: () {
        //           showBottomSheet(
        //               context: context,
        //               builder: (context) => Container(
        //                     child: Column(
        //                       children: [
        //                         ListTile(
        //                           title: Text("heel"),
        //                           trailing: Text("data"),
        //                         )
        //                       ],
        //                     ),
        //                   ));

        //           Fluttertoast.showToast(
        //               msg: "This is Center Short Toast",
        //               toastLength: Toast.LENGTH_LONG,
        //               gravity: ToastGravity.CENTER,
        //               timeInSecForIosWeb: 2,
        //               backgroundColor: Colors.red,
        //               textColor: Colors.white,
        //               fontSize: 16.0);
        //           print("object");
        //         },
        //         child: Text("fsf")),
        //   ),
        // ),
        );
  }
}
