import 'dart:ui';

import 'package:flutter/material.dart';

import 'DashBoard.dart';
import 'Functions/Info.dart';
import 'LoginPage.dart';

var pixelRatio = window.devicePixelRatio;
//InLogocal Pixels
var logicalScreenSize = window.physicalSize;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

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
  late String pageHeader = "Register To Login";
  late String name;
  var passwords;
  TextEditingController controller = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
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
      padding: const EdgeInsets.fromLTRB(30, 160, 30, 0),

      //padding: const EdgeInsets.all(20),
      children: <Widget>[
        header(pageHeader),
        firstName(firstNameController),
        lastName(lastNameController),
        email(emailController),
        password(passwordController),
        confirmPassword(passwordController),
        Container(
            height: 80,
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: ElevatedButton(
              child: const Text('Register'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )),
      ],
    ));
  }
}
