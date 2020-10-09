import 'package:flutter/foundation.dart';

class Product extends ChangeNotifier {
  final int id;
  final int squarePrice;
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  final String ingredients;
  final String uses;
  final List<String> threeDetails;
  bool isFavorite;

  Product({
    @required this.ingredients,
    this.uses,
    @required this.threeDetails,
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.squarePrice,
    @required this.imageUrl,
    @required this.description,
  });
}
