import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Subscription with ChangeNotifier {
  bool isSubscribed = false;

  Future<void> subscribeUser(String email) async {
    final response = await http.post(
      "https://us-central1-caribbean-secrets.cloudfunctions.net/createCustomer",
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
      body: jsonEncode({"email": email}),
    );
    if (response.statusCode == 200) {
      isSubscribed = true;
      print(jsonDecode(response.body));
    } else {
      isSubscribed = false;
    }
    notifyListeners();
  }
}
