import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CastorOilPageItemMobile extends StatelessWidget {
  const CastorOilPageItemMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Container(
      height: 650,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.threeDetails[0],
                      style: TextStyle(
                          color: Colors.white12,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.threeDetails[1],
                      style: TextStyle(
                          color: Colors.white12,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.threeDetails[2],
                      style: TextStyle(
                          color: Colors.white12,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 1,
                              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("/images/CS1Bottle.png"),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
            height: 0.5,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 125,
                    child: Text(
                      product.title,
                      maxLines: 3,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 125,
                    child: Text(
                      product.description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: 150,
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
                    "ADD TO CART: \$${product.price.toString()}.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
