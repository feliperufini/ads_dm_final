// import 'package:flutter/material.dart';
// import 'package:ads_dm_final/models/user.dart';
// import 'package:ads_dm_final/provider/users.dart';
// import 'package:ads_dm_final/routes/app_routes.dart';
// import 'package:provider/provider.dart';

// class UserTile extends StatelessWidget {
//   final User user;

//   const UserTile(this.user);

//   @override
//   Widget build(BuildContext context) {
//     final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
//         ? CircleAvatar(child: Icon(Icons.person))
//         : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
//     return ListTile(
//       leading: avatar,
//       title: Text(user.name),
//       subtitle: Text(user.email),
//       trailing: Container(
//         width: 100,
//         child: Row(
//           children: <Widget>[
//             IconButton(
//               icon: Icon(Icons.add_circle),
//               color: Colors.blue,
//               onPressed: () {
//                 Navigator.of(context).pushNamed(
//                   AppRoutes.USER_FORM,
//                   arguments: user,
//                 );
//               },
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             IconButton(
//               icon: Icon(Icons.remove_circle),
//               color: Colors.red,
//               onPressed: _incrementCounter,
//               tooltip: 'Increment',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
