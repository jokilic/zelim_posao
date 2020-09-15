import 'package:flutter/material.dart';

import '../constants.dart';

// The header of the app
class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          appName,
          style: TextStyle(
            color: textColor,
            fontSize: 36.0,
            fontFamily: 'Tiempos',
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          belowTitleString,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
            fontFamily: 'Tiempos',
          ),
        ),
      ],
    );
  }
}
