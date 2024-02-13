import 'package:flutter/material.dart';
import 'package:grocery_app/components/my_product_details_widget.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share))
            ],
          ),
          body: MyProductDetailsWidget(product: widget.product, onTapAddToCart: () => provider.addProduct(widget.product),),
        );
      },
    );
  }
}
