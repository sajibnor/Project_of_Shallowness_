import 'package:flutter/material.dart';

class DAb13D39 extends StatefulWidget {
  @override
  _DAb13D39State createState() => _DAb13D39State();
}

class _DAb13D39State extends State<DAb13D39> {
  List list = List.generate(30, (index) => index);

  var lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (ctx, index) {
              return Dismissible(
                direction: DismissDirection.up,
                
                confirmDismiss: (d) {
                  return showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Delete"),
                            content: Text("Are you sure delete this"),
                            actions: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('this is snak bar')));
                                  },
                                  icon: Icon(Icons.delete)),
                              IconButton(
                                  onPressed: () {
                                    print(d);
                                    Navigator.of(context).pop(false);
                                  },
                                  icon: Icon(Icons.clear))
                            ],
                          ));
                },
                background: Container(
                  color: Colors.green,
                ),
                secondaryBackground: Container(
                  color: Colors.blue,
                ),
                onDismissed: (direction) {
                  setState(() {
                    list.removeAt(index);
                  });
                  print(list);
                },
                key: ValueKey(list[index]),
                child: ListTile(
                  title: Text("Item ${list[index]}"),
                ),
              );
            }));
  }
}
