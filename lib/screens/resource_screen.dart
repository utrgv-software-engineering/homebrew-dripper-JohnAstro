import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:homebrew_dripper/models/product.dart';
import 'package:homebrew_dripper/models/resource.dart';

class ResourceScreen extends StatelessWidget {
  Resource resource;

  ResourceScreen(this.resource);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (Product product in resource.products)
            ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              onTap: () {
                _launchUrl(product.url);
              },
            ),
        ],
      ),
    );
  }

  _launchUrl(url) async {
    if (!await launchUrl(url)) throw 'Could not lanch $url';
  }
}
