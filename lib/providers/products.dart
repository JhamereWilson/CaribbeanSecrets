import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _oils = [
    Product(
        id: 1,
        title: "Original Haitian Castor Oil",
        price: 25.00,
        imageUrl: "/images/CS1Bottle.png",
        description: "",
        ingredients: ""),
    Product(
        id: 2,
        title: "Vanilla Haitian Castor Oil",
        price: 25.00,
        imageUrl: "/images/CS1Bottle.png",
        description: "",
        ingredients: ""),
    Product(
        id: 3,
        title: "Peppermint Haitian Castor Oil",
        price: 25.00,
        imageUrl: "/images/CS1Bottle.png",
        description: "",
        ingredients: ""),
  ];

  List<Product> get oils {
    return [..._oils];
  }

  Product findById(int id) {
    return _oils.firstWhere((prod) => prod.id == id);
  }
}
