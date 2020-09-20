import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/background_image.dart';
import '../components/header_button.dart';
import '../components/hero_section.dart';
import '../components/info_screen/simple_text.dart';
import '../components/info_screen/what_is_this_text.dart';
import '../components/info_screen/why_text.dart';
import '../components/info_screen/how_text.dart';
import '../components/info_screen/gospon_ferdinand.dart';

class InfoScreen extends StatelessWidget {
  static const routeName = '/info-screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundImage(
        child: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  HeaderButton(
                    alignment: Alignment.centerLeft,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: textColor,
                      size: 32.0,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  HeroSection(),
                  SizedBox(height: 36.0),
                  WhatIsThisText(),
                  SizedBox(height: 20.0),
                  WhyText(),
                  SizedBox(height: 20.0),
                  HowText(),
                  SizedBox(height: 36.0),
                  SimpleText(
                    Text(
                      howFinalString,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 36.0),
                  GosponFerdinand(),
                  SizedBox(height: 36.0),
                  SimpleText(
                    Text(
                      goodLuckString,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 56.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
