import 'package:flutter/material.dart';

// Widget that is shown instead of job results
//   - When the app is first loaded
//   - When there are no jobs in the search query
class CenterScreenWidget extends StatelessWidget {
  final String text;
  final String image;

  CenterScreenWidget({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36.0),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 136.0,
          ),
          SizedBox(height: 20.0),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Tiempos',
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
