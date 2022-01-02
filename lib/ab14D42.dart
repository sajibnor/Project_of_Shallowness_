import 'package:flutter/material.dart';
class Signup extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(   decoration: InputDecoration(labelText: "E mail"),),
            TextField(   decoration: InputDecoration(labelText: "Password"),),
            SizedBox(height: 20,),
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
                        "Sign_up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              TextButton(onPressed: (){}, child:   Text("Sign_up?", style: TextStyle(color: Colors.white),))
              


        ],



      ),
      



    );
  }
}