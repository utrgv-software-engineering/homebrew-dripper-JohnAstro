import 'dart:io';
import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/product.dart';
import 'package:homebrew_dripper/models/resource.dart';

class ResourceScreen extends StatelessWidget {
  Resource resource;

  ResourceScreen(this.resource);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resource.name),
      ),
      body: ListView(
        children: [
          for (Product product in resource.products)
            ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              onTap: () {
                Link(product.url);
              },
            ),
        ],
      ),
    );
  }
}
