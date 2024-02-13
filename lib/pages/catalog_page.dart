import 'package:flutter/material.dart';
import 'package:grocery_app/components/product_tile.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, provider, child) {
        List<Product> products = provider.products;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Catalog..'),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ProductTile(product: products[index]);
            },
            itemCount: products.length,
          ),
        );
      },
    );
  }
}
