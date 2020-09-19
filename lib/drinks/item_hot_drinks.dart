import 'package:estructura_practica_1/colors.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';

class ItemHotDrinks extends StatefulWidget {
  final ProductHotDrinks drink;
  ItemHotDrinks({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemHotDrinksState createState() => _ItemHotDrinksState();
}

class _ItemHotDrinksState extends State<ItemHotDrinks> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: color3,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    '${widget.drink.productTitle}',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '${widget.drink.productPrice}',
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(widget.drink.productImage),
                width: 100,
                height: 100,
              ),
              flex: 6,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 0, bottom: 80),
                child: IconButton(
                  color: color6,
                  icon: Icon(
                    widget.drink.liked ? Icons.favorite : Icons.favorite_border,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.drink.liked = !widget.drink.liked;
                    });
                  },
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
