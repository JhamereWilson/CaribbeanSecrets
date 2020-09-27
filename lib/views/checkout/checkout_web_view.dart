import 'dart:convert';
import 'dart:html';
import 'dart:io';

import 'package:caribbean_secrets_ecommerce/routing/local_server.dart';
import 'package:dio/dio.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CheckoutWebView extends StatefulWidget {
  CheckoutWebView({Key key, this.height, this.width}) : super(key: key);

  final num height;
  final num width;

  @override
  _CheckoutWebViewState createState() => _CheckoutWebViewState();
}

String url;

class _CheckoutWebViewState extends State<CheckoutWebView> {
  // @override
  // void initState() {
  //   super.initState();
  //   createSquareCheckout();
  // }
  @override
  void initState() {
    super.initState();
    createSquareCheckout();
  }

  Future<String> createSquareCheckout() async {
    String locationID = "LX5RNR9P3K0C5";
    String idempotencyKey = Uuid().v1();
    String reference_id = DateTime.now().toString();
    String squareVersion = '2020-08-26 ';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EasyWebView(
          src: url,
          onLoaded: () => print("Webview loaded"),
          isHtml: false,
          isMarkdown: false,
          height: widget.height,
          width: widget.width,
        ),
      ],
    );
  }
}
