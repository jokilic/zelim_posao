import 'package:flutter/material.dart';

import '../../constants.dart';
import './title_widget.dart';
import './simple_text.dart';

class WhatIsThisText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(whatIsThisTitleString),
        SimpleText(
          RichText(
            text: TextSpan(
              text: appName,
              style: TextStyle(
                color: textColor,
                fontSize: 20.0,
                height: 1.4,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: whatIsThisFirstString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: whatIsThisSecondString,
                ),
                TextSpan(
                  text: whatIsThisThirdString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: whatIsThisFourthString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
