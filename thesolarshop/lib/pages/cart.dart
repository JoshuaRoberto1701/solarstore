import 'package:flutter/foundation.dart';
import 'package:thesolarshop/pages/product.dart';

class Cart extends ChangeNotifier {
  final List<Product> _products = [];

  List<Product> get products => _products;

  void add(Product product) {
    _products.add(product);
    notifyListeners();
  }
}
