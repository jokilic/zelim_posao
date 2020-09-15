import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 100.0),
        Text(
          fetchingJobsString,
          style: TextStyle(
            fontFamily: 'Tiempos',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: [
            SpinKitWanderingCubes(
              color: textColor,
              size: 50.0,
            ),
            SizedBox(height: 50.0),
            Image.asset(
              gentlemanImage,
              width: 136.0,
            ),
            SizedBox(height: 50.0),
            Text(
              gentlemanString,
              style: TextStyle(
                fontFamily: 'Tiempos',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 100.0),
      ],
    );
  }
}
