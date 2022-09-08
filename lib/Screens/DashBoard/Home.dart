import 'package:flutter/material.dart';
import 'package:flutter_app/data/AppDev.dart';

class ContentDisplayScreen extends StatefulWidget {
  const ContentDisplayScreen({Key? key}) : super(key: key);

  @override
  State<ContentDisplayScreen> createState() => _ContentDisplayScreenState();
}

class _ContentDisplayScreenState extends State<ContentDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          services(
            Icons.web_rounded,
            'Web Development',
            'HTML,CSS,JavaScript(React), Flask and Django',
            context,
          ),
          services(
            Icons.phone_android,
            'Mobile Development',
            'Dart(Flutter), React-native, Python(Kivy)',
            context,
          ),
          services(
            Icons.desktop_windows,
            'Desktop development',
            'Python(Kivy), React-Native, Flutter',
            context,
          ),
          services(
            Icons.security_rounded,
            'Desktop Technician',
            'Software and Hardware Fixes',
            context,
          ),
        ],
      ),
    );
  }
}

Widget services(iconUrl, String title, String desc, context) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(0, 29.0, 0, 3.0),
      child: Flexible(
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      serviceDetails(iconUrl, title, desc, context)),
            );
          },
          trailing: SizedBox(
            height: 30,
            width: 30,
            child: ClipOval(
              child: Icon(iconUrl),
            ),
          ),
          title: Transform.translate(
              offset: const Offset(2, -7),
              child: Text(title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ))),
          //title: Text(title),
          subtitle: Row(
            children: [
              const Icon(
                Icons.arrow_circle_right,
                size: 8.1,
                color: Colors.purple,
              ),
              const SizedBox(
                width: 1.0,
              ),
              Text(
                desc,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ));
}

Widget serviceDetails(iconUrl, String title, desc, context) {
  // clickservices
  return Scaffold(
    appBar: AppBar(
      titleSpacing: 0.0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_rounded),
      ),
      title: Row(
        children: [
          Container(
            height: 60,
            width: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ],
      ),
    ),
    body: const ContentDisplay(),
  );
}

class ChatMess extends StatelessWidget {
  final String text;
  final AnimationController animationController;

  const ChatMess(
      {Key? key, required this.text, required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor:
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: const Color(0xffdcf8c6),
            borderRadius: BorderRadius.circular(4.0)),
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        child: Text(text),
      ),
    );
  }
}

class ContentDisplay extends StatefulWidget {
  const ContentDisplay({Key? key}) : super(key: key);

  @override
  State<ContentDisplay> createState() => _ContentDisplayState();
}

class _ContentDisplayState extends State<ContentDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("graphics/two.jpg"), fit: BoxFit.cover)),
      child:
          // MODIFIED
          appDev(),
    );
  }
}
