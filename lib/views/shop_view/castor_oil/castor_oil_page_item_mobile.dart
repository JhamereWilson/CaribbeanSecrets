import 'package:flutter/material.dart';

class CastorOilPageItemMobile extends StatelessWidget {
  const CastorOilPageItemMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/CS1Bottle.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 125,
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
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Peppermint",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Vanilla",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 45,
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
                        "Organic Haitian",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Castor Oil",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enjoy the traditional aspects of using Pure Unrefined Hatian Castor Oil.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w200),
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
