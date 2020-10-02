import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    var height = ScreenDimensions(context).screenHeight;
    var width = ScreenDimensions(context).screenWidth;
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 50,
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
          Container(
            height: 200,
            width: 200,
            child: ListView.builder(
              // shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              itemCount: cart.items.length,
              itemBuilder: (ctx, i) => CartItem(
                  id: cart.items.values.toList()[i].id,
                  price: cart.items.values.toList()[i].price,
                  quantity: cart.items.values.toList()[i].quantity,
                  title: cart.items.values.toList()[i].title,
                  productId: cart.items.values.toList()[i].productId,
                  imageUrl: cart.items.values.toList()[i].imageUrl),
            ),
          ),
          SizedBox(height: 5),
          Divider(
            height: 0.25,
            color: Colors.white,
          ),
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
        ],
      ),
    );
  }
}
