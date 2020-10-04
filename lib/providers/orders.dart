import 'dart:convert';
import 'dart:io';

import 'package:caribbean_secrets_ecommerce/models/cart_item_model.dart';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class OrderItem {
  final String title;
  final int amount;
  final int quantity;
  final List<CartItemModel> products;

  OrderItem( {
    @required this.title,
    @required this.amount,
    @required this.quantity,
    @required this.products,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  final String userId;

  Orders(this.userId, this._orders);

    _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


    createSquareCheckout(List<CartItemModel> cartProducts) async {
    final response = await http.post(
        "https://us-central1-caribbean-secrets.cloudfunctions.net/createCheckout",
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Credentials": "true",
        },
        body: json.encode({"line_items" : cartProducts
            .map((cp) => {
                  'name': cp.title,
                  'quantity': cp.quantity,
                  'base_price_money': {
                    'amount': cp.squarePrice,
                    "currency": "USD"
                  }
               
                })
            .toList(),}));

    if (response.statusCode == 200) {
      var checkoutUrl = response.body;
      _launchURL(checkoutUrl);
    }
    print(response.body);
    notifyListeners();
  }
}
