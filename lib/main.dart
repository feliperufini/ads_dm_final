import 'package:ads_dm_final/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:ads_dm_final/provider/users.dart';
import 'package:ads_dm_final/routes/app_routes.dart';
import 'package:ads_dm_final/views/user_form.dart';
import 'package:ads_dm_final/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Raleway',
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: Colors.green),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: AppRoutes.HOME,
        // routes: {
        //     '/': (context) => HomeScreen(),
        //     '/two': (context) => TwoScreen(),
        //     '/three': (context) => ThreeScreen(),
        //   },
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.LOGIN: (_) => LoginPage(),
          AppRoutes.USER_FORM: (_) => UserForm(),
        },
      ),
    );
  }
}
