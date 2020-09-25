import 'dart:html';

import 'package:caribbean_secrets_ecommerce/views/cart/cart_item.dart';
import 'package:caribbean_secrets_ecommerce/widgets/checkout_form.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_bar/navigation_bar_tabdesk.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBarTabDesk(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: CenteredView(
                child: ListView(
                  children: [
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
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 700,
                          width: 600,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(
                                color: Colors.white,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          child: ListView(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Shipping',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                              SizedBox(height: 10),
                              CheckoutForm(),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 0.5,
                                  style: BorderStyle.solid)),
                          height: 600,
                          width: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Enter Promo Code",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    height: 35,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w100),
                                      decoration: InputDecoration(
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
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    height: 35,
                                    child: FlatButton(
                                        color: Colors.red,
                                        onPressed: () {},
                                        child: Text(
                                          "Submit",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300),
                                        )),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Shipping",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    "6.99",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sales Tax",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "6.99",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
