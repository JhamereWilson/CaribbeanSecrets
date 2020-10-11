import 'package:auto_size_text/auto_size_text.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episode_player_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/add_to_cart_button.dart';

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailMobileView extends StatefulWidget {
  static const routeName = '/product-detail';

  @override
  _ProductDetailMobileViewState createState() =>
      _ProductDetailMobileViewState();
}

class _ProductDetailMobileViewState extends State<ProductDetailMobileView> {
  int quantityValue = 1;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final productId = ModalRoute.of(context).settings.arguments as int;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    //returns a product where the product IDs match --> NOTE: listen is false because this widget doesn't need to rebuild
    final screen = ScreenDimensions(context);
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.black,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
      endDrawer: CartScreenMobile(),
      key: scaffoldKey,
      body: Column(children: [
        NavigationBarMobile(
          scaffKey: scaffoldKey,
        ),
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
                        height: 100,
                        width: screen.screenWidth* 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(loadedProduct.imageUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            loadedProduct.title,
                            maxFontSize: 24,
                            minFontSize: 14,
                            maxLines: 2,
                            // title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          AutoSizeText(
                            "\$${loadedProduct.price.toString()}.00",
                            maxFontSize: 16,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: screen.screenHeight *0.1,
                            width: screen.screenWidth *  0.35,
                            child: AutoSizeText(
                              loadedProduct.description,
                              maxFontSize: 14,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Quantity",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 30,
                            width: 110,
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
                                    size: 10,
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
                                      fontSize: 10),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 10,
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
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Subtotal:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 10),
                              ),
                              Text(
                                "\$${(quantityValue * loadedProduct.price).toString()}.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          AddToCartButton(
                              height: 25,
                              width: 125,
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
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    thickness: 0.25,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Uses",
                      // title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    loadedProduct.uses,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 10),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    thickness: 0.25,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ingredients",
                      // title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    loadedProduct.ingredients,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 10),
                  ),
                  SizedBox(height: 10),
                  EpisodePlayerView(
                    height: screen.screenHeight * .3,
                    width: screen.screenWidth * .675,
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
