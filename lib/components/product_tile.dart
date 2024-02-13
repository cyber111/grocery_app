import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      leading: Image.network(
        "https://freepngimg.com/thumb/grocery/41619-7-groceries-free-download-image.png",
      ),
      onTap: () {},
      subtitle: Text("${product.price} ₹"),
    );
  }
}
