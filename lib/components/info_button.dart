import 'package:flutter/material.dart';

import '../constants.dart';

class InfoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => print('Otvori InfoScreen'),
        child: Icon(
          Icons.info_outline,
          color: textColor,
          size: 32.0,
        ),
      ),
    );
  }
}
