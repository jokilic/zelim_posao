import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleWidget extends StatelessWidget {
  final String text;

  TitleWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 36.0),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 30.0,
          fontFamily: tiemposFont,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
