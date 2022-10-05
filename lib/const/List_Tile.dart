import 'package:flutter/material.dart';
import 'package:flutter_app/theme/theme.dart';

class Square extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  //final Icons IconName;
  //final _route;

  Square(this.title, this.subtitle, this.icon);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(icon),
        onTap: () {},
      ),
    );
  }
}
