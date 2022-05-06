class Product {
  String name;
  Uri url;
  double price;

  Product(price, String url, name) {
    // add any rules to reject any invalid values
    // for example, reject negative price amounts
    if (price is! double) throw new ArgumentError();
    if (price < 0) throw new ArgumentError();
    if (name is! String) throw new ArgumentError();
    if (!url.contains('https')) throw new ArgumentError();

    this.name = name;
    this.url = Uri.parse(url);
    this.price = price;
  }
}
