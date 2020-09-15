import 'package:flutter/material.dart';

import '../../constants.dart';
import './title_widget.dart';
import './simple_text.dart';

class GosponFerdinand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(ferdinandTitleString),
        SimpleText(
          RichText(
            text: TextSpan(
              text: ferdinandFirstString,
              style: TextStyle(
                color: textColor,
                fontSize: 20.0,
                height: 1.4,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ferdinandSecondString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: ferdinandThirdString,
                ),
                TextSpan(
                  text: ferdinandFourthString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: ferdinandFifthString,
                ),
                TextSpan(
                  text: ferdinandSixthString,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: ferdinandSeventhString,
                ),
                TextSpan(
                  text: ferdinandEighthString,
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
