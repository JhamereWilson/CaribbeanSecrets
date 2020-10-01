import 'package:flutter/material.dart';

class SecretCollectionShopViewDesktop extends StatefulWidget {
  const SecretCollectionShopViewDesktop({
    Key key,
  }) : super(key: key);

  @override
  _SecretCollectionShopViewDesktopState createState() =>
      _SecretCollectionShopViewDesktopState();
}

class _SecretCollectionShopViewDesktopState extends State<SecretCollectionShopViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 800,
            width: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/CSwebsite-35.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 500,
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
                    "Pre-Poo",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Shampoo",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Creme",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Moisturizing\nMist",
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120,
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
                        "The\nSecret\nCollection",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                   
                      SizedBox(height: 10),
                      Text(
                        "Caribbean Secrets' Secret Collection gives you all the products that you need for a healthy hair care regimen.",
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
                                "ADD TO CART: \$100.00",
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
