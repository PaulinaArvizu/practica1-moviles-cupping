import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'package:flutter/material.dart';

class ItemHotDrinksDetails extends StatefulWidget {
  final ProductHotDrinks drink;
  ItemHotDrinksDetails({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemHotDrinksDetailsState createState() => _ItemHotDrinksDetailsState();
}

class _ItemHotDrinksDetailsState extends State<ItemHotDrinksDetails> {
  bool _selectedCH = false;
  bool _selectedM = false;
  bool _selectedG = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color7,
      appBar: AppBar(
        title: Text(widget.drink.productTitle),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: color2),
                    child: Image.network(widget.drink.productImage),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      color: color6,
                      icon: Icon(
                        widget.drink.liked
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      onPressed: () {
                        setState(() {
                          widget.drink.liked = !widget.drink.liked;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment(-1, 0),
              child: Text(
                widget.drink.productTitle,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              child: Text(widget.drink.productDescription),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text("TAMAÑOS DISPONIBLES"),
                  ),
                  // Expanded(
                  //   flex: 1,
                  //   child: Container(),
                  // ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "\$${widget.drink.productPrice}",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    color: _selectedCH ? Colors.purple[50] : Colors.white,
                    child: Text(
                      "Chico",
                      style: TextStyle(
                        color: _selectedCH ? Colors.purple : Colors.grey,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: _selectedCH ? Colors.purple : Colors.grey,
                        )),
                    onPressed: () {
                      setState(() {
                        _selectedCH = true;
                        _selectedM = false;
                        _selectedG = false;
                        widget.drink.productSize = ProductSize.CH;
                        widget.drink.productPrice =
                            widget.drink.productPriceCalculator();
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: MaterialButton(
                      color: _selectedM ? Colors.purple[50] : Colors.white,
                      child: Text(
                        "Mediano",
                        style: TextStyle(
                          color: _selectedM ? Colors.purple : Colors.grey,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: _selectedM ? Colors.purple : Colors.grey,
                          )),
                      onPressed: () {
                        setState(() {
                          _selectedCH = false;
                          _selectedM = true;
                          _selectedG = false;
                          widget.drink.productSize = ProductSize.M;
                          widget.drink.productPrice =
                              widget.drink.productPriceCalculator();
                        });
                      },
                    ),
                  ),
                  MaterialButton(
                    color: _selectedG ? Colors.purple[50] : Colors.white,
                    child: Text(
                      "Grande",
                      style: TextStyle(
                        color: _selectedG ? Colors.purple : Colors.grey,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: _selectedG ? Colors.purple : Colors.grey,
                        )),
                    onPressed: () {
                      setState(() {
                        _selectedCH = false;
                        _selectedM = false;
                        _selectedG = true;
                        widget.drink.productSize = ProductSize.G;
                        widget.drink.productPrice =
                            widget.drink.productPriceCalculator();
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: MaterialButton(
                    color: color3,
                    child: Text(
                      "AGREGAR AL CARRITO",
                      style: TextStyle(
                        color: color7,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                      color: color3,
                    )),
                    onPressed: () {
                      ++widget.drink.productAmount;
                      Navigator.of(context).pop(widget.drink);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: MaterialButton(
                    color: color3,
                    child: Text(
                      "COMPRAR AHORA",
                      style: TextStyle(
                        color: color7,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                      color: color3,
                    )),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
