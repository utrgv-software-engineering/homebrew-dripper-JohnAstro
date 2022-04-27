import 'product.dart';

class Resource {
  String name;
  List<Product> products;

  Resource(products, name) {
    // add any rules to reject any invalid values

    // If the name passed is an int or double throw ArgumentError
    if (name is int || name is double) throw new ArgumentError();

    this.name = name;
    this.products = products;
  }
}
