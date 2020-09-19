import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/inicio/login.dart';
import 'package:estructura_practica_1/inicio/register.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80, bottom: 60),
              child: Image.asset(
                "assets/images/cupping.png",
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 50,
              child: RaisedButton(
                child: Text('REGISTRATE'),
                color: color3,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Register();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 50,
              child: RaisedButton(
                child: Text('INGRESA'),
                color: color3,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
