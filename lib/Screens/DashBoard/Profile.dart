import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: UserProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);
  @override
  _UserProfilePage createState() => _UserProfilePage();
}

class _UserProfilePage extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Services Rendered'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.person),
                tooltip: 'Open Profile',
                onPressed: () {})
          ],
        ),
        body: Text("profile Page"));
  }
}
