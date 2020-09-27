
import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var screenHeight = ScreenDimensions(context).screenHeight;
    var screenWidth = ScreenDimensions(context).screenWidth;
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return GridTile(
      child: GestureDetector(
        onTap: () {
        //TODO: Implement navigation function when user taps -> router settings is fucking up
        },
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.symmetric(horizontal: screenWidth/10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.imageUrl),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20),
            Text(
              '\$' + '${product.price.toString()}' + ".00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20),
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
                    onPressed: () {
                      cart.addItem(product.id, product.price, product.title,
                          product.imageUrl);
                      print("ITEM ADDED TO CART:" +
                          " Product Title: ${product.title}" +
                          ", Product ID: ${product.id}" +
                          ", IMAGE URL: ${product.imageUrl}");
                    },
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
