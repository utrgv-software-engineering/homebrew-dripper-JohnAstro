class Product {
  String name;
  String link;
  double price;

  Product(price, link, name) {
    // add any rules to reject any invalid values
    // for example, reject negative price amounts
    this.name = name;
    this.link = link;
    this.price = price;
  }
}
