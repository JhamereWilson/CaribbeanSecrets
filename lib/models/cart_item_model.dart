import 'package:flutter/material.dart';

class CartItemModel extends ChangeNotifier {
  final String id;
  final String title;
  final int quantity;
  final double price;
  int squarePrice;
  final int productId;
  final String imageUrl;

  CartItemModel({
    @required this.squarePrice,
    @required this.imageUrl,
    @required this.productId,
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}
