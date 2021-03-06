import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './constants.dart';
import './screens/home_page.dart';
import './screens/info_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(ZelimPosao());
  });
}

class ZelimPosao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.routeName,
      routes: {
        InfoScreen.routeName: (context) => InfoScreen(),
      },
      title: appName,
      theme: ThemeData(
        primaryColor: textColor,
        fontFamily: rubikFont,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
