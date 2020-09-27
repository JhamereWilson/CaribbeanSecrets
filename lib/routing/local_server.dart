import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

/// Only for demo purposes!
/// Don't you dare do it in real apps!
class SquareServer {
  String locationID = "LX5RNR9P3K0C5";
  String checkoutIdempotencyKey = Uuid().v1();
  String orderIdempotencyKey = Uuid().v4();
  String accessToken =
      "EAAAEJjxBjV2DKSTQJPchFidkWE8izfkOeTF3aQbsvQklnlLSii-Ti1r8L67imjf";
  String squareVersion = '2020-08-26 ';

  Future<String> createSquareCheckout() async {
    final body = {
      'idempotency_key': checkoutIdempotencyKey,
      "order": {
        'idempotency_key': orderIdempotencyKey,
        "order": {
          "locationID": locationID,
          "referenceID": Uuid().v5("Order", "Jasmine"),
          'line_items': [
            {
              'name': "Test Shit",
              'price': 2,
              'quantity': 1,
            }
          ],
        }
      },
      "ask_for_shipping_address": true,
    };

    try {
      final result = await Dio().post(
        "https://connect.squareupsandbox.com/v2/locations/$locationID/checkouts",
        data: body,
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
      print(result.data);
      print(result.headers);
      print(result.request);
      print(result.statusCode);
      var data = jsonDecode(result.data);
      var url = data['checkout']["checkout_page_url"];
      
    } on DioError catch (e, s) {
      print(e.response);
      print(e.response);
      print(s);
      throw e;
    }
  }
}
