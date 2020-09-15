import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final Icon icon;
  final AlignmentGeometry alignment;
  final Function onTap;

  HeaderButton({
    this.alignment,
    this.icon,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
      alignment: alignment,
      child: InkWell(
        onTap: onTap,
        child: icon,
      ),
    );
  }
}
