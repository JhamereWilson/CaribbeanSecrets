import 'dart:convert';
import 'dart:io';

import 'package:caribbean_secrets_ecommerce/models/cart_item_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Cart with ChangeNotifier {
  String timeDate = DateTime.now().toString();

  Map<int, CartItemModel> _items = {};

  Map<int, CartItemModel> get items {
    return {..._items};
  }

  int get itemCount {
    int totalItems = 0;
    if (_items.entries == null) {
      return 0;
    }
    for (var cartItem in _items.entries) {
      totalItems = totalItems + cartItem.value.quantity;
    }
    return totalItems;
  }

  bool couponApplied;

  void applyCoupon() {
    couponApplied = true;
    notifyListeners();
  }

  double get totalAmount {
    double total = 0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    if (couponApplied == true) {
      total = total - 2;
    }
    if (total < 0) {
      total = 0;
    }
    return total;
  }

  int get squareTotalAmount {
    int total = 0;
     _items.forEach((key, cartItem) {
      total += cartItem.squarePrice * cartItem.quantity;
    });
  }

  double get discountTotal {
    double total = 0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total - 2;
  }

  void addItem(int productId, double price, String title, String imageUrl) {
    if (_items.containsKey(productId)) {
      //change quantity
      _items.update(
        productId,
        (existingCartItem) => CartItemModel(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
          imageUrl: existingCartItem.imageUrl,
          productId: existingCartItem.productId,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItemModel(
            price: price,
            quantity: 1,
            title: title,
            id: timeDate,
            productId: productId,
            imageUrl: imageUrl),
      );
    }
    notifyListeners();
  }

  void removeItem(int productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void increaseSingleItem(int productId) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => CartItemModel(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
          imageUrl: existingCartItem.imageUrl,
          productId: existingCartItem.productId,
        ),
      );
    }
    notifyListeners();
  }

  void removeSingleItem(int productId) {
    if (!_items.containsKey(productId)) {
      return;
    }
    if (_items[productId].quantity > 1) {
      _items.update(
          productId,
          (existingCartItem) => CartItemModel(
                id: existingCartItem.id,
                title: existingCartItem.title,
                price: existingCartItem.price,
                quantity: existingCartItem.quantity - 1,
                imageUrl: existingCartItem.imageUrl,
                productId: existingCartItem.productId,
              ));
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
