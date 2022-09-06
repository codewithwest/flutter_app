import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:west_flutter/theme/theme.dart';

import '../../data/AppDev.dart';
import '../../data/DeckTech.dart';
import '../../data/DeskDev.dart';
import '../../data/WebDev.dart';
import 'Profile.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: theme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViews'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.person),
                tooltip: 'Open Profile',
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()))
                    })
          ],
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            height: 100,
            child: ListTile(
              visualDensity: VisualDensity(vertical: 3),
              trailing: Icon(Icons.web_rounded),
              title: Transform.translate(
                  offset: Offset(5, -3),
                  child: Text('Web Development',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ))),
              subtitle: Text("HTML,CSS,JavaScript(React), Flask and Django"),
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => webDev()))
              },
            )),
        Container(
            height: 100,
            child: ListTile(
              trailing: Icon(Icons.phone_android),
              title: Transform.translate(
                  offset: Offset(2, -7),
                  child: Text('Mobile Development',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ))),
              subtitle: Text("Dart(Flutter), React-native, Python(Kivy)"),
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => appDev()))
              },
            )),
        Container(
            height: 100,
            child: ListTile(
              trailing: Icon(Icons.desktop_windows),
              title: Transform.translate(
                  offset: Offset(2, -7),
                  child: Text('Desktop development',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ))),
              subtitle: Text("Python(Kivy), React-Native, Flutter"),
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => deskDev()))
              },
            )),
        Container(
            height: 100,
            child: ListTile(
              trailing: Icon(Icons.security_rounded),
              title: Transform.translate(
                  offset: Offset(2, -7),
                  child: Text('Desktop Technician',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ))),
              subtitle: Text("Software and Hardware Fixes"),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => deskTech()))
              },
            )),
      ],
    );
  }
}
