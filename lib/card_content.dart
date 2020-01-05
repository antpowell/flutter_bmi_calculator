import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 64,
        ),
        SizedBox(
          height: 16,
        ),
        Text(text, style: TextStyle(fontSize: 16, color: Color(0xff8d8e98))),
      ],
    );
  }
}
