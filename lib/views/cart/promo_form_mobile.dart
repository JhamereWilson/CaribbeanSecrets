import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/promo_provider.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PromoFormMobile extends StatefulWidget {
  @override
  _PromoFormMobileState createState() => _PromoFormMobileState();
}

class _PromoFormMobileState extends State<PromoFormMobile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller;
  String promoCode;
  String successMessage = "";
  String failureMessage = "";
  bool promoSuccess = false;

  var promoCodes = [
    "JAS11",
    "ANA11",
    "NEMY11",
    "DANA11",
    "MONET11",
    "SHAWN11",
    "ROSE11",
    "JOR11",
    "TATI11",
    "TIO11",
    "ADR11",
    "ALLI11",
    "TY11",
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return promoSuccess == false
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 30,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _controller,
                    onSaved: (promoCode) => this.promoCode = promoCode,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a code';
                      }
                      return null;
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w100),
                    decoration: InputDecoration(
                      labelText: "Enter Promo Code",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w100),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid)),
                      contentPadding: EdgeInsets.only(
                          left: 5, bottom: 3, top: 3, right: 5),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 100,
                height: 30,
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      if (promoCodes.contains(promoCode.toUpperCase())) {
                        promoSuccess = true;
                        successMessage = "Enjoy \$2 off your purchase!";
                        cart.applyCoupon();
                        cart.applyCouponSquare();
                        setState(() {});
                      } else {
                        failureMessage = "Sorry, wrong code.";
                        promoSuccess = false;
                        setState(() {});
                      }
                    }
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}
