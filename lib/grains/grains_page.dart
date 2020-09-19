import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:flutter/material.dart';

import 'item_grains.dart';
import 'item_grains_details.dart';

class GrainsPage extends StatefulWidget {
  final List<ProductGrains> grainsList;
  GrainsPage({
    Key key,
    @required this.grainsList,
  }) : super(key: key);

  @override
  _GrainsPageState createState() => _GrainsPageState();
}

class _GrainsPageState extends State<GrainsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Granos"),
      ),
      body: ListView.builder(
        itemCount: widget.grainsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              return Navigator.of(context)
                  .push(
                MaterialPageRoute(
                  builder: (context) => ItemGrainsDetails(
                    grain: widget.grainsList[index],
                  ),
                ),
              )
                  .then(
                (value) {
                  if (value != null) {
                    Navigator.of(context).pop(value);
                  }
                },
              );
            },
            child: ItemGrains(
              grain: widget.grainsList[index],
            ),
          );
        },
      ),
    );
  }
}
