import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/inicio.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset(
              "assets/images/grains.png",
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _delay() async {
    await Future.delayed(
      const Duration(seconds: 2),
      _openInicioPage,
    );
    return true;
  }

  void _openInicioPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return Inicio();
        },
      ),
    );
  }
}
