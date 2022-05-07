// Test that the load resources gives you the data you expect
// this should be dependent on the resources that you actually want to have in the app

import 'package:homebrew_dripper/models/product.dart';
import 'package:homebrew_dripper/models/resource.dart';
import 'package:test/test.dart';
import 'package:homebrew_dripper/utils/resource_data.dart';

void main() {
  test('loadResources should give back the recources in my app', () {
    List<Resource> resources = ResourceData.loadResources();

    // add whatever tests help give you confidence
    expect(resources[0], isA<Resource>());
    expect(resources[0].name, "Coffee");
    expect(resources[0].products, isA<List<Product>>());

    expect(resources[1], isA<Resource>());
    expect(resources[1].name, "Grinders");
    expect(resources[1].products, isA<List<Product>>());

    expect(resources[2], isA<Resource>());
    expect(resources[2].name, "Kettles");
    expect(resources[2].products, isA<List<Product>>());

    expect(resources[3], isA<Resource>());
    expect(resources[3].name, "Homebrew Dripper");
    expect(resources[3].products, isA<List<Product>>());
  });

  test('Coffee resource should give back the coffee products in my app', () {
    List<Resource> resources = ResourceData.loadResources();

    // Product 0
    expect(
        resources[0].products[0].name, "Peet's Coffee Big Bang | Medium Roast");
    expect(resources[0].products[0].price, 18.95);
    expect(resources[0].products[0].url,
        Uri.parse('https://www.peets.com/products/big-bang'));

    // Product 1
    expect(resources[0].products[1].name,
        "Caribou Coffee French Roast Blend | Dark Roast");
    expect(resources[0].products[1].price, 14.99);
    expect(
        resources[0].products[1].url,
        Uri.parse(
            'https://www.cariboucoffee.com/product/sumatra-lingtong-region/'));

    // Product 2
    expect(resources[0].products[2].name,
        "Irving Farm Highline Blend | Light Roast");
    expect(resources[0].products[2].price, 17.35);
    expect(resources[0].products[2].url,
        Uri.parse('https://www.drinktrade.com/highline/p/1526'));
  });

  test('Grinders resource should give back the grinder products in my app', () {
    List<Resource> resources = ResourceData.loadResources();

    // Add proper tests when hard coded data is added
    expect(resources[1].products, isEmpty);
  });

  test('Kettles resource should give back the kettle products in my app', () {
    List<Resource> resources = ResourceData.loadResources();

    // Add proper tests when hard coded data is added
    expect(resources[2].products, isEmpty);
  });

  test(
      'Homebrew Dripper resource should give back the Homebrew Dripper product in my app',
      () {
    List<Resource> resources = ResourceData.loadResources();

    // Add proper tests when hard coded data is added
    expect(resources[3].products, isEmpty);
  });
}
