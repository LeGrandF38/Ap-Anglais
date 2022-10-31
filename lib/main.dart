import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xff673ab7)));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: "/",
      //onGenerateInitialRoutes: (settings) =>
      // RouteGenerator.generateRoute(settings),

      // ),
      //home: n1_tv(),
      //home: homeNiveau3(),
      //home: homeNiveau2(),
      //home: homeNiveau1(),
      home: home(),
    );
  }
}

/////////////////////////
