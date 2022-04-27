class Product {
  String name;
  String link;
  double price;

  Product(price, link, name) {
    // add any rules to reject any invalid values
    // for example, reject negative price amounts
    if (price is String) throw new ArgumentError();
    if (price < 0) throw new ArgumentError();
    if (name is int || name is double) throw new ArgumentError();

    this.name = name;
    this.link = link;
    this.price = price;
  }
}
