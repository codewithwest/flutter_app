import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  //final Icons IconName;
  //final _route;

  Square(this.title, this.subtitle, this.icon);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      subtitle: Text(subtitle),
      trailing: Icon(icon),
      onTap: () {},
    );
  }
}
