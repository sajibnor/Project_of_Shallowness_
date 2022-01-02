
// import 'package:flutter/material.dart';



// class MyApp extends StatelessWidget {
//   final String title = 'Dismissible Example';

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: title,
//         theme: ThemeData(primarySwatch: Colors.deepOrange),
//         home: MainPage(title: title),
//       );
// }

// class MainPage extends StatefulWidget {
//   final String title;

//   const MainPage({
//     @required this.title,
//   });

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   List<Chat> items = List.of(Data.chats);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.restore),
//               onPressed: () {
//                 setState(() {
//                   items = List.of(Data.chats);
//                 });
//               },
//             ),
//           ],
//         ),
//         body: ListView.separated(
//           itemCount: items.length,
//           separatorBuilder: (context, index) => Divider(),
//           itemBuilder: (context, index) {
//             final item = items[index];

//             return DismissibleWidget(
//               item: item,
//               child: buildListTile(item),
//               onDismissed: (direction) =>
//                   dismissItem(context, index, direction),
//             );
//           },
//         ),
//       );

//   void dismissItem(
//     BuildContext context,
//     int index,
//     DismissDirection direction,
//   ) {
//     setState(() {
//       items.removeAt(index);
//     });

//     switch (direction) {
//       case DismissDirection.endToStart:
//         Utils.showSnackBar(context, 'Chat has been deleted');
//         break;
//       case DismissDirection.startToEnd:
//         Utils.showSnackBar(context, 'Chat has been archived');
//         break;
//       default:
//         break;
//     }
//   }

//   Widget buildListTile(Chat item) => ListTile(
//         contentPadding: EdgeInsets.symmetric(
//           horizontal: 16,
//           vertical: 16,
//         ),
//         leading: CircleAvatar(
//           radius: 28,
//           backgroundImage: NetworkImage(item.urlAvatar),
//         ),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               item.username,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 4),
//             Text(item.message)
//           ],
//         ),
//         onTap: () {},
//       );
// }



// class Data {
//   static const chats = <Chat>[
//     Chat(
//       urlAvatar:
//           'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
//       username: 'Tom',
//       message: 'Let\'s go for a run.',
//     ),
//     Chat(
//       urlAvatar:
//           'https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80',
//       username: 'Marie Luise',
//       message: 'Yesterday was the best day of my life',
//     ),
//     Chat(
//       urlAvatar:
//           'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
//       username: 'Honey',
//       message: 'Hey whatsup?',
//     ),
//     Chat(
//       urlAvatar:
//           'https://images.unsplash.com/photo-1588979355313-6711a095465f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=621&q=80',
//       username: 'Family',
//       message: 'Good morning guys!',
//     ),
//     Chat(
//       urlAvatar:
//           'https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1153&q=80',
//       username: 'Book Club',
//       message: 'What\'s the next book to read?',
//     ),
//   ];
// }
// class Chat {
//   final String urlAvatar;
//   final String username;
//   final String message;

//   const Chat({
//     @required this.urlAvatar,
//     @required this.username,
//     @required this.message,
//   });
// }
// class DismissibleWidget<T> extends StatelessWidget {
//   final T item;
//   final Widget child;
//   final DismissDirectionCallback onDismissed;

//   const DismissibleWidget({
//     @required this.item,
//     @required this.child,
//     @required this.onDismissed,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Dismissible(
//         key: ObjectKey(item),
//         background: buildSwipeActionLeft(),
//         secondaryBackground: buildSwipeActionRight(),
//         child: child,
//         onDismissed: onDismissed,
//       );

//   Widget buildSwipeActionLeft() => Container(
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         color: Colors.green,
//         child: Icon(Icons.archive_sharp, color: Colors.white, size: 32),
//       );

//   Widget buildSwipeActionRight() => Container(
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         color: Colors.red,
//         child: Icon(Icons.delete_forever, color: Colors.white, size: 32),
//       );
// }