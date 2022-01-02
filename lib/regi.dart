import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myflutterdemo/drw.dart';
import 'package:myflutterdemo/page1.dart';
// import 'package:flutter_application_13/signup.dart';

class HelloDart extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HelloDart> {
  TextEditingController usermail = TextEditingController();
  TextEditingController userpass = TextEditingController();
  var sn = SnackBar(content: Text(""));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Sign In',
            style: TextStyle(color: Colors.green),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: usermail,
                    decoration: InputDecoration(
                      //    prefixIcon: Icon(
                      //   Icons.email,
                      //   color: Colors.white,
                      // ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Email Address',
                      // hintText: 'used_emai@domain.com',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: userpass,
                    decoration: InputDecoration(
                      //    prefixIcon: Icon(
                      //   Icons.email,
                      //   color: Colors.white,
                      // ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                InkWell(
                    onTap: () async {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: usermail.text, password: userpass.text);
                        print(userCredential.user);

                        if (userCredential.user != null) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        }
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        }
                        if (e.code == 'email-already-in-use') {
                          print("email-already-in-use");
                        }
                      }
                      //  catch (e) {
                      //   print(e);
                      // }
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (_) => Page2()));
                    },
                    child: Container(
                      height: 35,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                  child: Text("OR"),
                ),
                InkWell(
                  onTap: () async {
                    // UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email:userName.text , password: );
                  },
                  child: Container(
                    // height: 50,
                    width: 450,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text(
                        'Facebook Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      //  Navigator.push(context,
                      //         MaterialPageRoute(builder: (ctx) => null));
                    },
                    child: Text(
                      "Sign Up ?",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )));
  }
}
