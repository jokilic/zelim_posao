import 'package:flutter/material.dart';

import '../../constants.dart';

class PopularSearchWidget extends StatelessWidget {
  final String image;
  final Function onTap;

  PopularSearchWidget({
    this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: textColor,
            width: 2,
          ),
        ),
        width: 110.0,
        height: 100.0,
        child: Image.asset(image),
      ),
    );
  }
}
