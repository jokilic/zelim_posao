import 'package:flutter/material.dart';
import 'package:zelim_posao/constants.dart';

// Widget that is shown instead of job results
//   - When the app is first loaded
//   - When there are no jobs in the search query
class CenterScreenWidget extends StatelessWidget {
  final String? text;
  final String? image;

  CenterScreenWidget({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            image!,
            width: 136.0,
          ),
          SizedBox(height: 20.0),
          Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: tiemposFont,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
