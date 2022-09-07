import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class favourites extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: MyFavouritesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFavouritesPage extends StatefulWidget {
  const MyFavouritesPage({Key? key}) : super(key: key);
  @override
  _MyFavouritesPage createState() => _MyFavouritesPage();
}

class _MyFavouritesPage extends State<MyFavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Title(
            color: Colors.red,
            child: Text(
              "Favourites",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )),
      ),
    );
  }
}
