import 'product.dart';

class Resource {
  String name;
  List<Product> products;

  Resource(products, name) {
    // add any rules to reject any invalid values
    this.name = name;
    this.products = products;
  }
}
