import 'package:caribbean_secrets_ecommerce/providers/products.dart';

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailView extends StatelessWidget {
  final int quantityValue;
  final int productId;

  const ProductDetailView({this.quantityValue, this.productId});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    //returns a product where the product IDs match --> NOTE: listen is false because this widget doesn't need to rebuild
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        NavigationBar(),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: CenteredView(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(loadedProduct.imageUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loadedProduct.title,
                            // title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 36),
                          ),
                          SizedBox(height: 20),
                          Text(
                            loadedProduct.price.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 28),
                          ),
                          SizedBox(height: 50),
                          Text(
                            "Quantity",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  "1",
                                  // quantityValue.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "Subtotal:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16),
                              ),
                              Text(
                                "\$30.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          SizedBox(
                            width: 200,
                            height: 40,
                            child: FlatButton(
                              color: Colors.red,
                              onPressed: () {},
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(
                    height: 1,
                    thickness: 0.25,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      loadedProduct.title,
                      // title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    loadedProduct.description,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  // Container(
                  //   height: 1,
                  //   color: Colors.white,
                  //   width: 200,
                  // ),
                  Divider(
                    height: 1,
                    thickness: 0.25,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ingredients",
                      // title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    loadedProduct.ingredients,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
