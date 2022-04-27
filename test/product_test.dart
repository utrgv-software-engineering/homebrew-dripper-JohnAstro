import 'package:homebrew_dripper/models/resource.dart';
import 'package:homebrew_dripper/models/product.dart';
import 'package:test/test.dart';

void main() {
  test('creates a valid product', () {
    // make a product
    Product validProduct = Product(
        0.00,
        'https://github.com/utrgv-software-engineering/homebrew-dripper-JohnAstro',
        'Group 8');

    expect(validProduct.price, 0.00);
    expect(validProduct.link,
        'https://github.com/utrgv-software-engineering/homebrew-dripper-JohnAstro');
    expect(validProduct.name, 'Group 8');
  });

  test('Throws ArgumentError if the price of the product is negative', () {
    // make product values
    double price = -20.00;
    String link =
        'https://github.com/utrgv-software-engineering/homebrew-dripper-JohnAstro';
    String name = 'Group 8';

    // Expect argument error
    expect(() => Product(price, link, name), throwsArgumentError);
  });

  test('throws ArgumentError if the price of a product is a string', () {
    // make product values
    String price = '10.50';
    String link =
        'https://github.com/utrgv-software-engineering/homebrew-dripper-JohnAstro';
    String name = 'Group 8';

    // Expect argument error
    expect(() => Product(price, link, name), throwsArgumentError);
  });

  test('throws ArguementError if the name of the product is an int', () {
    double price = 20.00;
    String link =
        'https://github.com/utrgv-software-engineering/homebrew-dripper-JohnAstro';
    int name = 52;

    // Expect argument error
    expect(() => Product(price, link, name), throwsArgumentError);
  });
}
