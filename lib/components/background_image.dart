import 'package:flutter/material.dart';

import '../constants.dart';

// Enables the subtle bacground decoration
class BackgroundImage extends StatelessWidget {
  final Widget child;

  BackgroundImage({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            backgroundImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
