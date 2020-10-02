import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/promo_form.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/cart_item.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/cart_item_mobile.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    var height = ScreenDimensions(context).screenHeight;
    var fullWidth = ScreenDimensions(context).screenWidth;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBarMobile(),
          Container(
            width: fullWidth,
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
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 1,
                      width: fullWidth / 3,
                    )),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 200,
                  width: 300,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    padding: const EdgeInsets.all(20),
                    scrollDirection: Axis.vertical,
                    itemCount: cart.items.length,
                    itemBuilder: (ctx, i) => CartItemMobile(
                        id: cart.items.values.toList()[i].id,
                        price: cart.items.values.toList()[i].price,
                        quantity: cart.items.values.toList()[i].quantity,
                        title: cart.items.values.toList()[i].title,
                        productId: cart.items.values.toList()[i].productId,
                        imageUrl: cart.items.values.toList()[i].imageUrl),
                  ),
                ),
              ],
            ),
          ),
         PromoForm(),
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
          SizedBox(height: 10),
          SizedBox(
            width: 150,
            height: 35,
            child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  //  locator<NavigationService>().navigateTo(CheckoutRoute);
                },
                child: Text(
                  "Checkout",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                )),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
