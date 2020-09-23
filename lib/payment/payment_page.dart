import 'package:flutter/material.dart';

import '../colors.dart';

void main() => runApp(Payment());

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagos',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: color5,
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: color3,
                width: 300,
                height: 150,
                margin: EdgeInsets.all(15),
                child: Center(
                  child: GestureDetector(
                    onTap: _openDialog,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.credit_card,
                          size: 100,
                        ),
                        Container(
                          child: Flexible(
                            child: Text(
                              "Tarjeta de crédito",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                color: color3,
                width: 300,
                height: 150,
                child: Center(
                  child: GestureDetector(
                    onTap: _openDialog,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.card_membership,
                          size: 100,
                        ),
                        Container(
                          child: Flexible(
                            child: Text(
                              "PayPal",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                color: color3,
                width: 300,
                height: 150,
                child: Center(
                  child: GestureDetector(
                    onTap: _openDialog,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.card_giftcard,
                          size: 100,
                        ),
                        Container(
                          child: Flexible(
                            child: Text(
                              "Tarjeta de regalo",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openDialog() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.network(
                  "https://m.europages.com/filestore/opt/product/ba/e2/product_8cfb4526.jpg"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                        "https://static.vecteezy.com/system/resources/previews/000/599/173/non_2x/coffee-icon-vector.jpg"),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text("Orden exitosa!"),
                  ),
                ],
              ),
            ],
          ),
          content: Text(
            "Tu orden ha sido registrada, para más información busca en la opción historial de compras en tu perfil.",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }
}
