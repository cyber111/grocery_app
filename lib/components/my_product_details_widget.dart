import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';

class MyProductDetailsWidget extends StatelessWidget {
  final Product product;
  final void Function() onTapAddToCart;
  const MyProductDetailsWidget({super.key, required this.product, required this.onTapAddToCart});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Images
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35, top: 10, bottom: 0),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  child: Image.network(product.image),
                ),
              ),
            ),
            //Name
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  //desc
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [const Text('Quantity'), IconButton(onPressed: () {}, icon: const Icon(Icons.add))]),
                  //Price
                  Text('${product.price} ₹'),
                  const SizedBox(height: 20),
                  //Details
                  const Text('Product Description', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 8),
                  Text(product.description),
                  //Button Add to cart
                ],
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onTapAddToCart,
          child: Container(
            decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Theme.of(context).colorScheme.onBackground,),
              width: double.infinity,
              height: 55,
              child: const Center(
                  child: Icon(Icons.add_shopping_cart_outlined))),
        )
      ],
    );
  }
}
