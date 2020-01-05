import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';

const double _footerHeight = 64;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).primaryColorLight,
                    cardChild:
                        CardContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).primaryColorLight,
                    cardChild: CardContent(
                        icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: Theme.of(context).primaryColorLight,
                      // cardChild: cardContent(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            height: _footerHeight,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
