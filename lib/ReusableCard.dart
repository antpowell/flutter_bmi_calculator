import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: (() {
          if (color != null) {
            return color;
          } else {
            return Theme.of(context).primaryColor;
          }
        }()),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
