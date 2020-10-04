import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/checkout_form.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkout_web_view.dart';

class CheckoutScreen extends StatefulWidget {
  static const routeName = '/checkout';

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  TextEditingController _controller;
  String promoCode;
  String cardName;
  String promoMessage;
  String cardNum;

  bool promoSuccess = false;
  bool promoFail = false;

  final _payFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          NavigationBarTabDesk(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: CenteredView(
                child: ListView(children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("/images/CSwebsite-5.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  Container(
                    height: 0.25,
                    width: 50,
                    color: Colors.white,
                  ),
                  CheckoutForm(),
                ]),
              ),
            ),
          ),
        ]));
  }
}
