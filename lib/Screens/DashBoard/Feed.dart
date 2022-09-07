import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/*
class feed extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFeedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFeedPage extends StatefulWidget {
  const MyFeedPage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Title(
            color: Colors.red,
            child: Text(
              "Service Updates",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )),
      ),
    );
  }
}
*/

class feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: theme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Feed Updates'),
          centerTitle: true,
        ),
        //body: BodyLayout(),
      ),
    );
  }
}
