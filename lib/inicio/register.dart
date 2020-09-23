import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/inicio/login.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  bool _obscureText = true;
  bool acceptTerms = false;

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
                "Email",
                style: TextStyle(color: color7),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: _emailController,
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
                obscureText: _obscureText,
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: color7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: color7),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 1.0),
                    child: IconButton(
                      color: color4,
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  color: color3,
                  icon: Icon(acceptTerms
                      ? Icons.check_box
                      : Icons.check_box_outline_blank),
                  onPressed: () {
                    setState(() {
                      acceptTerms = !acceptTerms;
                    });
                  },
                ),
                Text(
                  "ACEPTO LOS TERMINOS Y CONDICIONES DE USO",
                  style: TextStyle(fontSize: 13, color: color7),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            RaisedButton(
              child: Text('REGISTRARSE'),
              color: color3,
              elevation: 8.0,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3.0)),
              ),
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(
                              title: "Inicio",
                            )));
              },
            ),
            SizedBox(height: 15.0),
            Text("Ya tienes cuenta?",
                textAlign: TextAlign.center, style: TextStyle(color: color7)),
            MaterialButton(
                child: Text(
                  "INGRESA",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: color7,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                })
          ],
        ),
      ),
    );
  }
}
