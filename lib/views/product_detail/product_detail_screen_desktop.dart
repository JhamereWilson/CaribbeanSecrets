import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episode_player_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/add_to_cart_button.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailDesktopView extends StatefulWidget {
  static const routeName = '/product-detail';

  @override
  _ProductDetailDesktopViewState createState() =>
      _ProductDetailDesktopViewState();
}

class _ProductDetailDesktopViewState extends State<ProductDetailDesktopView> {
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
        floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          Navigator.of(context).pushNamed(CartRoute);
        },
        backgroundColor: Colors.transparent,
        focusColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        hoverColor: Colors.black,
        splashColor: Colors.black,
        child: Consumer<Cart>(
          builder: (_, cartData, ch) => Badge(
            color: Colors.white,
            fontSize: 16,
            topPosition: 4,
            //ch is passed into the consumer where the child is defined
            value: cartData.itemCount == 0 ? "" : cartData.itemCount.toString(),
            child: ch,
          ),
          child: Icon(Icons.shopping_cart, color: Colors.red, size: 42),
        ),
      ),
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
                            "\$${loadedProduct.price.toString()}.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 28),
                          ),
                          SizedBox(height: 20),
                          Text(
                            loadedProduct.description,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 24),
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
                          AddToCartButton(
                              height: 50,
                              width: 250,
                              fontSize: 12,
                              action: () {
                                cart.addItem(
                                    loadedProduct.id,
                                    loadedProduct.price,
                                    loadedProduct.title,
                                    loadedProduct.imageUrl,
                                    loadedProduct.squarePrice);
                              }),
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
                    height: screen.screenHeight * .6,
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
