import 'package:flutter/material.dart';

class Ab16D44 extends StatelessWidget {
  Ab16D44({Key? key}) : super(key: key);

  // bool b = DismissDirection.startToEnd;

  List _list = List.generate(100, (index) => index);

  // List lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          itemBuilder: (context, index) => Dismissible(
                confirmDismiss: (direction) {
                  if (DismissDirection.endToStart ==
                      DismissDirection.startToEnd) {
                    print("true");
                    return showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Confirm"),
                              content: Text("Are you sure to deleted this"),
                              actions: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                    },
                                    icon: Text("Are You??")),
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(false);
                                    },
                                    icon: Icon(Icons.stay_current_portrait))
                              ],
                            ));
                  }
                  return showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Delete"),
                            content: Text("Are you sure to deleted this"),
                            actions: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                  icon: Icon(Icons.delete)),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  icon: Icon(Icons.stay_current_portrait))
                            ],
                          ));

                  // AlertDialog(
                  //       title: Text('Delete'),
                  //       content: Text('Delete'),
                  //       actions: [
                  //         IconButton(
                  //             onPressed: () {
                  //               Navigator.of(context).pop(false);
                  //             },
                  //             icon: Icon(Icons.clear)),
                  //         TextButton(
                  //             onPressed: () {
                  //               Navigator.of(context).pop(true);
                  //             },
                  //             child: Text("Clear"))
                  //       ],
                  //     ));
                },
                onDismissed: (direction) {
                
                  _list.remove(index);
                  print(_list);

                  print(direction);
                },
                background: Container(
                  child: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                  color: Colors.amber,
                ),
                secondaryBackground: Container(
                  child: Icon(Icons.clear),
                  color: Colors.green,
                ),
                key: ValueKey(_list),
                child: ListTile(
                  title: Text("Item ${_list[index + 1]}"),
                ),
              ),
          separatorBuilder: (context, index) => Divider(
                thickness: 3,
                height: 2,
              ),
          itemCount: _list.length - 1),
    );
  }
}
