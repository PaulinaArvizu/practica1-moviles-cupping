import 'package:estructura_practica_1/colors.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/utils/constants.dart';

// import 'inicio.dart';
import 'inicio/splash_screen_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        backgroundColor: Colors.blue[200],
        accentColor: color3,
        primaryColor: color5,
        textTheme: TextTheme(
            //   headline6: TextStyle(color: Colors.greenAccent),
            // bodyText1: TextStyle(
            //     color: Colors.redAccent,
            // fontSize: 42,
            //     fontWeight: FontWeight.w900,
            // ),
            ),
        fontFamily: "AkzidenzGrotesk BQ Medium",
      ),
      home: SplashScreen(),
    );
  }
}
