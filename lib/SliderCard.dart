import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliderCard extends StatefulWidget {
  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  int height = 69;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("HEIGHT", style: kTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  height.toString(),
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                ),
                Text('in',
                    style: TextStyle(
                      color: Color(0xff8d8e98),
                    ))
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                thumbColor: Theme.of(context).accentColor,
                overlayColor: Theme.of(context).accentColor.withAlpha(0x29),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28),
              ),
              child: Slider(
                value: height.toDouble(),
                activeColor: Theme.of(context).accentColor,
                inactiveColor: Color(0xff8d8e98),
                min: 54,
                max: 86,
                onChanged: (double newValue) {
                  setState(() {
                    height = newValue.round();
                  });
                },
              ),
            ),
          ],
        ));
  }
}
