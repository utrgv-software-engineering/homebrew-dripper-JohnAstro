class Product {
  String name;
  String url;
  double price;

  Product(price, url, name) {
    // add any rules to reject any invalid values
    // for example, reject negative price amounts
    if (price is! double) throw new ArgumentError();
    if (price < 0) throw new ArgumentError();
    if (name is! String) throw new ArgumentError();

    this.name = name;
    this.url = url;
    this.price = price;
  }
}
