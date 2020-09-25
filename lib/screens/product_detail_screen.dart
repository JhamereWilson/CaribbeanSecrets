import 'dart:html';
import 'package:caribbean_secrets_ecommerce/shared/caribbean_secrets_colors.dart';
import 'package:caribbean_secrets_ecommerce/shared/gradient_text.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final int quantityValue;

  const ProductDetailScreen(
      {Key key, this.title, this.imageUrl, this.price, this.quantityValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                              image: AssetImage("images/CS1Bottle.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Original Haitian Castor Oil",
                            // title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 36),
                          ),
                          SizedBox(height: 20),
                          // GradientText(
                          //   text: "\$40.00",
                          //   colors: CaribbeanSecretsColors.colors,
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w600,
                          //     fontSize: 28,
                          //   ),
                          // ),
                          Text(
                            "\$40.00",
                            // price.toString(),
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
                      "Original Haitian Castor Oil",
                      // title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    lipsum.createText(numParagraphs: 3, numSentences: 5),
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
                    lipsum.createText(numParagraphs: 1, numSentences: 5),
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
