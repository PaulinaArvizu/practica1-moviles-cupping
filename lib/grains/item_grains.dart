import 'package:estructura_practica_1/colors.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:flutter/material.dart';

class ItemGrains extends StatefulWidget {
  final ProductGrains grain;
  ItemGrains({
    Key key,
    @required this.grain,
  }) : super(key: key);

  @override
  _ItemGrainsState createState() => _ItemGrainsState();
}

class _ItemGrainsState extends State<ItemGrains> {
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
                    '${widget.grain.productTitle}',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '${widget.grain.productPrice}',
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(widget.grain.productImage),
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
                    widget.grain.liked ? Icons.favorite : Icons.favorite_border,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.grain.liked = !widget.grain.liked;
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
