import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CastorOilPageItemTablet extends StatelessWidget {
  const CastorOilPageItemTablet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = ScreenDimensions(context).screenWidth;
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Container(
      height: 600,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 600,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/CS1Bottle.png"),
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
                    product.threeDetails[0],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.threeDetails[1],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.threeDetails[2],
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
                  height: 600,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        product.description,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 10),
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
                                cart.addItem(product.id, product.price,
                                    product.title, product.imageUrl);
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
                                    fontSize: 12),
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
