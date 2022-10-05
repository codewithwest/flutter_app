import 'package:flutter/material.dart';

import 'Screens/LoginPage.dart';
import 'theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /*
  loginState(MyApp) {
    bool loginStates = true;
    if (loginStates == true) {
      const DashBoard();
    } else {
      const LoginPage();
    }
  }
  */

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: theme(),
        // A widget which will be started on application startup

        home: LoginPage());
  }
}

//classes
class User {
  String? name;
  String? email;
  String? password;
}
