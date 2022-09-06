import 'package:flutter/material.dart';

import '../../main.dart';
import '../../theme/theme.dart';

class settings extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserSettinsPage(),
      theme: theme(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserSettinsPage extends StatefulWidget {
  const UserSettinsPage({Key? key}) : super(key: key);
  @override
  _UserSettinsPage createState() => _UserSettinsPage();
}

class _UserSettinsPage extends State<UserSettinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
