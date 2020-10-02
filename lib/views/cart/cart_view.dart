import 'package:caribbean_secrets_ecommerce/providers/cart.dart' show Cart;

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/promo_form.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/cart_item.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/cart_item_desktop.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    var height = ScreenDimensions(context).screenHeight;
    var width = ScreenDimensions(context).screenWidth;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBarTabDesk(),
          Container(
            width: width,
            height: 400,
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
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "${cart.itemCount} items",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 1,
                      width: width / 3,
                    )),
                Container(
                  height: 400,
                  width: 600,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    padding: const EdgeInsets.all(20),
                    scrollDirection: Axis.vertical,
                    itemCount: cart.items.length,
                    itemBuilder: (ctx, i) => CartItemDesktop(
                        id: cart.items.values.toList()[i].id,
                        price: cart.items.values.toList()[i].price,
                        quantity: cart.items.values.toList()[i].quantity,
                        title: cart.items.values.toList()[i].title,
                        productId: cart.items.values.toList()[i].productId,
                        imageUrl: cart.items.values.toList()[i].imageUrl),
                  ),
                ),
                PromoForm(),
              ],
            ),
          ),
    
        ],
      ),
    );
  }
}
