import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/inicio/register.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();
  bool accept = false;

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
              margin: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                "Nombre Completo",
                style: TextStyle(color: color7),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: _usernameController,
                decoration: new InputDecoration(
                  focusColor: color7,
                  fillColor: color7,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: color7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "Password",
                style: TextStyle(color: color7),
              ),
            ),
            Container(
              child: TextField(
                style: TextStyle(
                  color: color7,
                ),
                controller: _passwordController,
                obscureText: true,
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: color7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: color7),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 50,
              child: RaisedButton(
                child: Text('ENTRAR'),
                color: color3,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Home(
                          title: "Inicio",
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "¿Olvidaste tu password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color7,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "¿Aún no tienes cuenta?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color7,
                ),
              ),
            ),
            MaterialButton(
              child: Text(
                "REGISTRATE",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: color7,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
