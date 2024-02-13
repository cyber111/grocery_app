import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final void Function() onTap;
  final void Function() onTapAction;
  const ProductTile({super.key, required this.product, required this.onTap, required this.onTapAction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.background,
      title: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold),),
      leading: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Image.network(
          product.image,
        ),
      ),
      trailing: IconButton(onPressed: onTapAction, icon: Icon(Icons.add_box_outlined, color: Theme.of(context).colorScheme.onBackground,)),
      onTap: onTap,
      subtitle: Text("${product.price} ₹", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
    );
  }
}
