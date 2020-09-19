import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/models/product_dessert.dart';
import 'package:flutter/material.dart';

class ItemDesserts extends StatefulWidget {
  final ProductDesserts dessert;
  ItemDesserts({
    Key key,
    @required this.dessert,
  }) : super(key: key);

  @override
  _ItemDessertsState createState() => _ItemDessertsState();
}

class _ItemDessertsState extends State<ItemDesserts> {
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
                    '${widget.dessert.productTitle}',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '${widget.dessert.productPrice}',
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(widget.dessert.productImage),
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
                    widget.dessert.liked
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.dessert.liked = !widget.dessert.liked;
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
