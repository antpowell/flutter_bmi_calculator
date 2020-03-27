import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final ColorScheme colorScheme = ColorScheme.dark(
    primary: Color(0xff0A0E21),
    primaryVariant: Color(0xFF1D1e33),
    secondary: Color(0xffeb1555),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D1e33),
        primaryColorDark: Color(0xFF111328),
        toggleableActiveColor: Color(0xFF3A3F57),
        accentColor: Color(0xffeb1555),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: InputPage(),
    );
  }
}
