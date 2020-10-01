import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItemMobile extends StatelessWidget {
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
              height: 100,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: screenWidth / 10),
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
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 5),
            Text(
              '\$' + '${product.price.toString()}' + ".00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 5),
            Container(
              height: 25,
              width: 125,
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
                          color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
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

class CastorOilProductView extends StatelessWidget {
  const CastorOilProductView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Container(
      height: 400,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(product.imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 250,
            color: Colors.white,
            width: 1,
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Original",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Peppermint",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Vanilla",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 300,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Organic Haitian",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Castor Oil",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Enjoy the traditional aspects of using Pure Unrefined Hatian Castor Oil.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 25,
                        width: 125,
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
                                // cart.addItem(product.id, product.price, product.title,
                                //     product.imageUrl);
                                // print("ITEM ADDED TO CART:" +
                                //     " Product Title: ${product.title}" +
                                //     ", Product ID: ${product.id}" +
                                //     ", IMAGE URL: ${product.imageUrl}");
                              },
                              child: Text(
                                "ADD TO CART: \$30.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
