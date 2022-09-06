import 'package:flutter/material.dart';
import 'package:west_flutter/theme/theme.dart';
import 'Screens/LoginPage.dart';
import 'Screens/DashBoard.dart';

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
