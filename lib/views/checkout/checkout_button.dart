import 'dart:convert';
import 'dart:io';

import 'package:caribbean_secrets_ecommerce/models/cart_item_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/orders.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:html' as html;
import 'package:http/http.dart' as http;

class CheckoutButton extends StatefulWidget {
  final num height;
  final num width;

  const CheckoutButton({Key key, this.height, this.width}) : super(key: key);
  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  createSquareCheckout(List<CartItemModel> cartProducts) async {
    final response = await http.post(
        "https://us-central1-caribbean-secrets.cloudfunctions.net/createCheckout",
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Credentials": "true",
        },
        body: json.encode({
          "line_items": cartProducts
              .map((cp) => {
                    'name': cp.title,
                    'quantity': cp.quantity.toString(),
                    'base_price_money': {
                      'amount': cp.squarePrice,
                      "currency": "USD"
                    }
                  })
              .toList(),
        }));

    if (response.statusCode == 200) {
      var checkoutUrl = response.body;
    }
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<Orders>(context, listen: false);
    final cart = Provider.of<Cart>(context);
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: FlatButton(
          color: Colors.red,
          // onPressed: () => Navigator.of(context).pushNamed(CheckoutRoute),
          onPressed: () {
            // Future.delayed(Duration(seconds: 2), () {
            //   Navigator.of(context).pushNamed(CheckoutRoute);
            // });
            orders.createSquareCheckout(cart.items.values.toList());
          },
          child: Text(
            "Checkout",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          )),
    );
  }
}
