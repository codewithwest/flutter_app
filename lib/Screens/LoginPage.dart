import 'dart:ui';

import 'package:flutter/material.dart';

import 'DashBoard.dart';
import 'Functions/Info.dart';
import 'Registration.dart';

var pixelRatio = window.devicePixelRatio;
//InLogocal Pixels
var logicalScreenSize = window.physicalSize;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //Creating Variables
  late String appName = "WestLabs";
  late String name;
  var passwords;
  TextEditingController controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //Getting the window Height

  void click() {
    this.name = controller.text;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DashBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      padding: const EdgeInsets.fromLTRB(30, 230, 30, 0),
      //padding: const EdgeInsets.all(20),
      children: <Widget>[
        header(appName),
        email(emailController),
        password(passwordController),
        TextButton(
          onPressed: () {
            //forgot password screen
          },
          child: const Text(
            'Forgot Password',
          ),
        ),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashBoard()));
              },
            )),
        Row(
          children: <Widget>[
            const Text('Does not have account?'),
            TextButton(
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //this.name = controller.text;

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registration()));
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    ));
  }
}
