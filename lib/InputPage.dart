import 'package:bmi_calculator/ReusableCard.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CardContent.dart';
import 'SliderCard.dart';

const double _footerHeight = 64;
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                        print('clicked male');
                      });
                    },
                    child: ReusableCard(
                      color: gender == Gender.male
                          ? Theme.of(context).primaryColorDark
                          : Theme.of(context).primaryColor,
                      cardChild: CardContent(
                          icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                        print('clicked female');
                      });
                    },
                    child: ReusableCard(
                      color: gender == Gender.female
                          ? Theme.of(context).primaryColorDark
                          : Theme.of(context).primaryColor,
                      cardChild: CardContent(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SliderCard(),
          ),
          Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: Theme.of(context).primaryColor,
                      // cardChild: cardContent(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Theme.of(context).primaryColor,
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
