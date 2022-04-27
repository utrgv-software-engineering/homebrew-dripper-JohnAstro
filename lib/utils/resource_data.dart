import 'package:homebrew_dripper/models/resource.dart';
import 'package:homebrew_dripper/models/product.dart';

Resource makeCoffeeResource() {
  List<Product> products = [
    Product(17.95, 'https://www.peets.com/products/big-bang',
        "Peet's Coffee Big Bang | Medium Roast"),
    Product(
        14.99,
        'https://www.cariboucoffee.com/product/sumatra-lingtong-region/',
        "Caribou Coffee French Roast Blend | Dark Roast"),
    Product(17.35, 'https://www.drinktrade.com/highline/p/1526',
        "Irving Farm Highline Blend | Light Roast"),
  ];

  Resource coffee = Resource(products, 'Coffee');
  return coffee;
}

Resource makeGrindersResource() {
  List<Product> products = [];

  Resource grinders = Resource(products, 'Grinders');
  return grinders;
}

Resource makeKettlesResource() {
  List<Product> products = [];

  Resource kettles = Resource(products, 'Kettles');
  return kettles;
}

Resource makeHomebrewDripperResource() {
  List<Product> products = [];

  Resource homeBrewDripper = Resource(products, 'Homebrew Dripper');
  return homeBrewDripper;
}

List<Resource> getAllResources() {
  return [
    makeCoffeeResource(),
    makeGrindersResource(),
    makeKettlesResource(),
    makeHomebrewDripperResource()
  ];
}

class ResourceData {
  static List<Resource> loadResources() {
    return getAllResources();
  }
}
