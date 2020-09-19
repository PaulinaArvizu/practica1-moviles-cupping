import 'package:estructura_practica_1/models/product_dessert.dart';
import 'package:estructura_practica_1/models/product_grains.dart';

class ProductCart {
  List<ProductDesserts> drinks;
  List<ProductGrains> grains;
  List<ProductDesserts> desserts;

  ProductCart({
    this.drinks,
    this.grains,
    this.desserts,
  });
}
