import 'package:flutter/material.dart';

import '../../constants.dart';
import './title_widget.dart';
import './simple_text.dart';

class HowText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(howTitleString),
        Row(
          children: [
            SizedBox(width: 20.0),
            Expanded(
              child: SimpleText(
                RichText(
                  text: TextSpan(
                    text: howFirstString,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20.0,
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: howSecondString,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SizedBox(width: 20.0),
            Expanded(
              child: SimpleText(
                RichText(
                  text: TextSpan(
                    text: howThirdString,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20.0,
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: howFourthString,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: howFifthString,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(
                        text: howSixthString,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
