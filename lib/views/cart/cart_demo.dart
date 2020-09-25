import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class CartDemo extends StatefulWidget {
  @override
  _CartDemoState createState() => _CartDemoState();
}

class _CartDemoState extends State<CartDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenDimensions(context).screenHeight,
      width: ScreenDimensions(context).screenWidth,
      color: Colors.red,
    );
  }
}
