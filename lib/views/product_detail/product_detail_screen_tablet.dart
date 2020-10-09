import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episode_player_view.dart';

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailTabletView extends StatefulWidget {
  static const routeName = '/product-detail';

  @override
  _ProductDetailTabletViewState createState() =>
      _ProductDetailTabletViewState();
}

class _ProductDetailTabletViewState extends State<ProductDetailTabletView> {
  int quantityValue = 1;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final productId = ModalRoute.of(context).settings.arguments as int;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    //returns a product where the product IDs match --> NOTE: listen is false because this widget doesn't need to rebuild
    final screen = ScreenDimensions(context);
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
                        height: 200,
                        width: 200,
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
                                fontSize: 26),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "\$${loadedProduct.price.toString()}.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Text(
                            loadedProduct.description,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 16),
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
                                  onPressed: () {
                                    setState(() {
                                      quantityValue--;
                                    });
                                  },
                                ),
                                Text(
                                  quantityValue.toString(),
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
                                  onPressed: () {
                                    setState(() {
                                      quantityValue++;
                                    });
                                  },
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
                                "\$${(quantityValue * loadedProduct.price).toString()}.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
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
                                    cart.addItem(
                                        loadedProduct.id,
                                        loadedProduct.price,
                                        loadedProduct.title,
                                        loadedProduct.imageUrl,
                                        loadedProduct.squarePrice);
                                    print("ITEM ADDED TO CART:" +
                                        " Product Title: ${loadedProduct.title}" +
                                        ", Product ID: ${loadedProduct.id}" +
                                        ", IMAGE URL: ${loadedProduct.imageUrl}");
                                  },
                                  child: Text(
                                    "ADD TO CART",
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
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    height: 1,
                    thickness: 0.25,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Uses",
                      // title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    loadedProduct.uses,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 24),
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  EpisodePlayerView(
                    height: screen.screenHeight * .45,
                    width: screen.screenWidth * .8,
                    url: "https://www.youtube.com/embed/g9MB0K07lSA",
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
