import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:flutter/material.dart';

class ItemGrainsDetails extends StatefulWidget {
  final ProductGrains grain;
  ItemGrainsDetails({
    Key key,
    @required this.grain,
  }) : super(key: key);

  @override
  _ItemGrainsDetailsState createState() => _ItemGrainsDetailsState();
}

class _ItemGrainsDetailsState extends State<ItemGrainsDetails> {
  bool _selectedC = false;
  bool _selectedK = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color7,
      appBar: AppBar(
        title: Text(widget.grain.productTitle),
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
                    child: Image.network(widget.grain.productImage),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      color: color6,
                      icon: Icon(
                        widget.grain.liked
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      onPressed: () {
                        setState(() {
                          widget.grain.liked = !widget.grain.liked;
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
                widget.grain.productTitle,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              child: Text(widget.grain.productDescription),
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
                      "\$${widget.grain.productPrice}",
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
                    color: _selectedC ? Colors.purple[50] : Colors.white,
                    child: Text(
                      "250 G",
                      style: TextStyle(
                        color: _selectedC ? Colors.purple : Colors.grey,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: _selectedC ? Colors.purple : Colors.grey,
                        )),
                    onPressed: () {
                      setState(() {
                        _selectedC = true;
                        _selectedK = false;
                        widget.grain.productWeight = ProductWeight.CUARTO;
                        widget.grain.productPrice =
                            widget.grain.productPriceCalculator();
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: MaterialButton(
                      color: _selectedK ? Colors.purple[50] : Colors.white,
                      child: Text(
                        "1 KG",
                        style: TextStyle(
                          color: _selectedK ? Colors.purple : Colors.grey,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: _selectedK ? Colors.purple : Colors.grey,
                          )),
                      onPressed: () {
                        setState(() {
                          _selectedC = false;
                          _selectedK = true;
                          widget.grain.productWeight = ProductWeight.KILO;
                          widget.grain.productPrice =
                              widget.grain.productPriceCalculator();
                        });
                      },
                    ),
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
                      ++widget.grain.productAmount;
                      Navigator.of(context).pop(widget.grain);
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
