import 'package:flutter/foundation.dart';

class Product extends ChangeNotifier {
  final int id;
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  final String ingredients;
  bool isFavorite;

  Product(
      {@required this.ingredients,
      @required this.id,
      @required this.title,
      @required this.price,
      @required this.imageUrl,
      @required this.description});
}
