import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/models/product_getter.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> _products = productsDummyData;

  List<Product> _cart = [];

  void addProduct(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    if (_cart.isNotEmpty) {
      _cart.remove(product);
      notifyListeners();
    }
  }

  get cart => _cart;

  get products => _products;
}
