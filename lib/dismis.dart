

import 'package:flutter/material.dart';

class Dismissable extends StatefulWidget {
  const Dismissable({Key? key}) : super(key: key);

  @override
  _DismissableState createState() => _DismissableState();
}

class _DismissableState extends State<Dismissable> {
  var lst = List.generate(50, (index) => index);
  // [0,1,2,3,4,]
  // List.generate(40, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: lst.length,
        itemBuilder: (context, index) => Dismissible(
          background: Container(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            color: Colors.green,
          ),
          key: ValueKey(lst[index]),
          confirmDismiss: (direction) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Delete'),
                  content: Text('Delete'),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        icon: Icon(Icons.clear)),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Clear"))
                  ],
                );
              },
            );
          },
          onDismissed: (direction) {
            setState(() {
              lst.removeAt(index);
              print(lst);
            });
          },
          secondaryBackground: Container(
            color: Colors.cyan,
          ),
          child: Container(
              child: ListTile(
            title: Text("Item ${lst[index]}"),
          )),
        ),
        separatorBuilder: (context, index) => Divider(
          thickness: 3,
          height: 3,
        ),
      ),
    );
  }
}
