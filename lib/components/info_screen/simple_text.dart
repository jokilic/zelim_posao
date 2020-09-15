import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final Widget child;

  SimpleText(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: child,
    );
  }
}
