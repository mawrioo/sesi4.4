import '../models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(id: 'p1', title: 'Laptop', price: 1000),
    Product(id: 'p2', title: 'Smartphone', price: 500),
    Product(id: 'p3', title: 'Headphones', price: 200),
    Product(id: 'p4', title: 'Smartwatch', price: 300),
  ];

  List<Product> get items {
    return [..._items];
  }
}
