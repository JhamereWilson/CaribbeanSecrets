import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _oils = [
    Product(
      id: 1,
      title: "Original Haitian Castor Oil",
      price: 25.00,
      imageUrl: "/images/CS1Bottle.png",
      description: "Enjoy the traditional aspects of using Pure Unrefined Hatian Castor Oil.",
      ingredients: "Pure Unrefined Haitian Castor Oil",
      threeDetails: ["Unrefined", "Cator", "Oil"],
    ),
    Product(
      id: 2,
      title: "Vanilla Haitian Castor Oil",
      price: 25.00,
      imageUrl: "/images/CS1Bottle.png",
      description: "Soothe your scalp and your senses with Vanilla infused Haitian Castor Oil.",
      ingredients: "Pure Unrefined Haitian Castor Oil, Vanilla Essential Oil",
      threeDetails: ["Vanilla", "Essential", "Oil"],
    ),
    Product(
      id: 3,
      title: "Peppermint Haitian Castor Oil",
      price: 25.00,
      imageUrl: "/images/CS1Bottle.png",
      description: "Stimulate hair growth with peppermint oil infused Haitian Castor Oil.",
      ingredients: "Pure Unrefined Haitian Castor Oil , Peppermint Essential Oil",
      threeDetails: ["Peppermint", "Essential", "Oil"],
    ),
  ];

  List<Product> get oils {
    return [..._oils];
  }

  Product findById(int id) {
    return _oils.firstWhere((prod) => prod.id == id);
  }
}
