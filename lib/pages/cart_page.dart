import 'package:flutter/material.dart';
import 'package:grocery_app/components/product_tile.dart';
import 'package:grocery_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, provider, child) {
        final cart = provider.cart ?? [];
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            centerTitle: true,
            title: const Text(
              'Cart',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: cart.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return ProductTile(
                      product: cart[index],
                      onTap: () {},
                      onTapAction: () {},
                    );
                  },
                  itemCount: cart.length,
                )
              : const Center(
                  child: Text('Cart is Empty ..'),
                ),
        );
      },
    );
  }
}
