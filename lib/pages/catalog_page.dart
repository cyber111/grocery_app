import 'package:flutter/material.dart';
import 'package:grocery_app/components/product_tile.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/pages/cart_page.dart';
import 'package:grocery_app/pages/product_details_page.dart';
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
            backgroundColor: Theme.of(context).colorScheme.background,
            title: const Text(
              'Catalog',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ProductTile(
                  product: products[index],
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProductDetailsPage(product: products[index]))),
              onTapAction: () {
                provider.addProduct(products[index]);
              },);
            },
            itemCount: products.length,
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  )),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              child: Icon(Icons.shopping_cart_outlined)),
        );
      },
    );
  }
}
