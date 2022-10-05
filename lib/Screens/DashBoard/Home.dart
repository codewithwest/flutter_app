import 'package:flutter/material.dart';
import 'package:flutter_app/data/AppDev.dart';

import '../../const/List_Tile.dart';

class ContentDisplayScreen extends StatefulWidget {
  const ContentDisplayScreen({Key? key}) : super(key: key);

  @override
  State<ContentDisplayScreen> createState() => _ContentDisplayScreenState();
}

class _ContentDisplayScreenState extends State<ContentDisplayScreen> {
  final _title = [
    'Web Development',
    'Mobile Development',
    'Desktop development',
    'Desktop Technician',
  ];
  final _subtitle = [
    'HTML,CSS,JavaScript(React), Flask and Django',
    'Dart(Flutter), React-native, Python(Kivy)',
    'Python(Kivy), React-Native, Flutter',
    'Software and Hardware Fixes',
  ];
  final _icon = [
    Icons.web_rounded,
    Icons.phone_android,
    Icons.desktop_windows,
    Icons.security_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Services Categories"),
      ),
      body: ListView.builder(
        itemCount: _title.length,
        itemBuilder: (context, index) {
          return Square(_title[index], _subtitle[index], _icon[index]);
        },
      ),
    );
  }
}
