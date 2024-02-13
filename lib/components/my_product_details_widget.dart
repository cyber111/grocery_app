import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';

class MyProductDetailsWidget extends StatelessWidget {
  final Product product;
  const MyProductDetailsWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Images
        Image.network('https://freepngimg.com/thumb/grocery/41619-7-groceries-free-download-image.png'),
        //Name
        Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        //desc
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text(product.description), IconButton(onPressed: () {}, icon: const Icon(Icons.add))]),
        //Price
        Text('${product.price} ₹'),
        //Details
        const Text('Product Description'),
        const Text('Product DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct Description'),

      ],
    );
  }
}
