import 'package:homebrew_dripper/models/resource.dart';
import 'package:homebrew_dripper/models/product.dart';
import 'package:test/test.dart';

void main() {
  test("creates a valid resource", () {
    // make a resource
    List<Product> validProducts = [];
    Resource validResource = Resource(validProducts, "About Us");

    // check that it has the right data
    expect(validResource.name, "About Us");
    expect(validResource.products, isEmpty);
  });

  test("throws ArgumentError when creating resoruce with an int for name", () {
    // make valid products
    List<Product> validProducts = [];

    // check that it throws an argument error with int for
    expect(() => Resource(validProducts, 110034), throwsArgumentError);
  });
}
