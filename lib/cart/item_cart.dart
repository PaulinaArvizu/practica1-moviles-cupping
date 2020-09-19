import 'package:estructura_practica_1/colors.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  final dynamic product;
  final ValueChanged<double> onAmountUpdated;
  ItemCart({
    Key key,
    @required this.onAmountUpdated,
    @required this.product,
  }) : super(key: key);

  @override
  _ItemCartState createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color1,
      margin: EdgeInsets.all(24),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
            width: 150,
            child: Image.network(widget.product.productImage),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("${widget.product.productTitle}"),
                SizedBox(
                  height: 12,
                ),
                Text("${widget.product.productSize}"),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: _remProd),
                    Text("${widget.product.productAmount}"),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    IconButton(
                        icon: Icon(Icons.add_circle_outline),
                        onPressed: _addProd),
                    SizedBox(
                      height: 12,
                    ),
                    Text("\$${widget.product.productPrice}"),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _addProd() {
    setState(() {
      ++widget.product.productAmount;
    });
    widget.onAmountUpdated(widget.product.productPrice);
  }

  void _remProd() {
    setState(() {
      if (widget.product.productAmount == 0) {
        widget.product.productAmount = 0;
        widget.onAmountUpdated(0);
      } else {
        --widget.product.productAmount;
        widget.onAmountUpdated(-1 * widget.product.productPrice);
      }
    });
  }
}
