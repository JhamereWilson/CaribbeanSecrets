import 'dart:html';

import 'package:caribbean_secrets_ecommerce/views/logo_view/logo_view.dart';
import 'package:flutter/material.dart';

class LandingPageNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LogoView(height: 100, width: 200),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.teal,
                Colors.blue,
                Colors.purple,
                Colors.deepPurple
              ]),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.black,
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "ORDER NOW",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
