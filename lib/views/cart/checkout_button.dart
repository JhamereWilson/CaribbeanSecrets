import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'dart:html' as html;

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
    Future<String> createSquareCheckout() async {
      String locationID = "LX5RNR9P3K0C5";
      String idempotencyKey = Uuid().v1();
      String reference_id = DateTime.now().toString();
      String squareVersion = '2020-08-26 ';
      var url;
      final body = {
        'idempotency_key': idempotencyKey,
        "order": {
          'idempotency_key': idempotencyKey,
          'reference_id': reference_id,
          "order": {
            "locationID": locationID,
            "referenceID": Uuid().v5("Order", "Jasmine"),
            'line_items': [
              {
                'name': "Test Shit",
                'quantity': 1,
                'base_price_money': {
                  "amount": 2,
                  "currencey": "USD",
                },
              }
            ],
          }
        },
        "ask_for_shipping_address": true,
      };

      try {
        final result = await Dio().post(
          "https://us-central1-caribbean-secrets.cloudfunctions.net/createCheckout",
          data: jsonEncode(body),
          options: Options(
            headers: {
              'Square-Version': squareVersion,
              HttpHeaders.contentTypeHeader: "application/json",
              "Access-Control-Allow-Origin": "*",
              "Access-Control-Allow-Credentials": true,
            },
            receiveDataWhenStatusError: true,
          ),
        );
        if (result.statusCode == 200) {
          print("it worked");
          print("RESULT DATA:" + result.data);
          setState(() {
            final Map<String, dynamic> data = jsonDecode(result.data);
            url = data["checkout"]["checkout_page_url"];
            html.window.location.href = url;
            print(url);
            print("DATA");
            print(data);
          });
          return url;
        } else {
          print("something went wrong");
        }
      } on DioError catch (e, s) {
        print(e.response);
        print(e.response);
        print(s);
        throw e;
      }
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: FlatButton(
          color: Colors.red,
          onPressed: () => createSquareCheckout(),
          child: Text(
            "Checkout",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          )),
    );
  }
}
