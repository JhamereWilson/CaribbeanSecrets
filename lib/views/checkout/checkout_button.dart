import 'dart:convert';
import 'dart:io';

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
            orders.createSquareCheckout(cart.items.values.toList());
            Navigator.of(context).pushNamed(HomeRoute);
          },
          child: Text(
            "Checkout",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          )),
    );
  }
}
