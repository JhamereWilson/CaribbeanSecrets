import 'package:caribbean_secrets_ecommerce/providers/cart.dart' show Cart;
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/cart_item.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_bar/navigation_bar_tabdesk.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:js' as js;

import '../checkout_screen.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    var height = ScreenDimensions(context).screenHeight;
    var width = ScreenDimensions(context).screenWidth;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
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
                                  image: AssetImage("/images/CSwebsite-1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text(
                                "Shopping Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(height: height/20),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              '${cart.itemCount} Items',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Subtotal:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '\$${cart.totalAmount.toStringAsFixed(2)}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 0.25,
                            color: Colors.white,
                          ),
                          SizedBox(height: height/30),
                          Container(
                            height: 200,
                            width: 200,
                            //CART ITEM LIST ----------------------------
                            child: ListView.builder(
                              // shrinkWrap: true,
                              padding: const EdgeInsets.all(20),
                              scrollDirection: Axis.vertical,
                              itemCount: cart.items.length,
                              itemBuilder: (ctx, i) => CartItem(
                                  id: cart.items.values.toList()[i].id,
                                  price: cart.items.values.toList()[i].price,
                                  quantity:
                                      cart.items.values.toList()[i].quantity,
                                  title: cart.items.values.toList()[i].title,
                                  productId:
                                      cart.items.values.toList()[i].productId,
                                  imageUrl:
                                      cart.items.values.toList()[i].imageUrl),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            height: 35,
                            child: FlatButton(
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(CheckoutScreen.routeName);
                                },
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                NavigationBarMobile(),
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
                                  image: AssetImage("/images/CSwebsite-1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text(
                                "Shopping Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              '${cart.itemCount} Items',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Subtotal:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '\$${cart.totalAmount.toStringAsFixed(2)}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 0.5,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 300,
                            width: 300,
                            //CART ITEM LIST ----------------------------
                            child: ListView.builder(
                              // shrinkWrap: true,
                              padding: const EdgeInsets.all(20),
                              scrollDirection: Axis.vertical,
                              itemCount: cart.items.length,
                              itemBuilder: (ctx, i) => CartItem(
                                  id: cart.items.values.toList()[i].id,
                                  price: cart.items.values.toList()[i].price,
                                  quantity:
                                      cart.items.values.toList()[i].quantity,
                                  title: cart.items.values.toList()[i].title,
                                  productId:
                                      cart.items.values.toList()[i].productId,
                                  imageUrl:
                                      cart.items.values.toList()[i].imageUrl),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            height: 35,
                            child: FlatButton(
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(CheckoutScreen.routeName);
                                },
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
