import 'package:flutter/material.dart';

import '../../constants.dart';
import './title_widget.dart';
import './simple_text.dart';

class WhyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(whyTitleString),
        SimpleText(
          Text(
            whyFirstString,
            style: TextStyle(
              color: textColor,
              fontSize: 20.0,
              height: 1.4,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            SizedBox(width: 20.0),
            Expanded(
              child: SimpleText(
                RichText(
                  text: TextSpan(
                    text: whySecondString,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20.0,
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: whyThirdString,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: whyFourthString,
                      ),
                      TextSpan(
                        text: whyFifthString,
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
                    text: whySixthString,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20.0,
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: whySeventhString,
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
