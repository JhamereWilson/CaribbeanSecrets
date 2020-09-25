import 'dart:html';
import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/animated_text.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_demo.dart';
import 'package:caribbean_secrets_ecommerce/views/landing_page/subscribe_field.dart';

import 'package:caribbean_secrets_ecommerce/views/logo_view/logo_view.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_page.dart';
import 'package:caribbean_secrets_ecommerce/widgets/product_item.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

bool subscribed = false;

class SinglePurchaseLandingPage extends StatefulWidget {
  @override
  _SinglePurchaseLandingPageState createState() =>
      _SinglePurchaseLandingPageState();
}

class _SinglePurchaseLandingPageState extends State<SinglePurchaseLandingPage> {
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    var screen = ScreenDimensions(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {},
        backgroundColor: Colors.black,
        focusColor: Colors.black,
        foregroundColor: Colors.black,
        hoverColor: Colors.black,
        splashColor: Colors.black,
        child: Icon(Icons.shopping_cart, color: Colors.white),
      ),

      backgroundColor: Colors.black,
      // body: DraggableScrollbar.semicircle(
      //   controller: _scrollController,
      //   heightScrollThumb: 30,
      //   backgroundColor: Colors.white.withOpacity(0.7),
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                controller: _scrollController,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: screen.screenHeight,
                        width: screen.screenWidth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('/images/CSwebsite-9.jpg'),
                            colorFilter: ColorFilter.mode(
                                Colors.black54, BlendMode.darken),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: 1,
                        child: AnimatedText(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //------------------LOGO VIEW ---------------------
                  Align(
                      alignment: Alignment.center,
                      child: LogoView(height: 300, width: 600)),
                  SizedBox(
                    height: 30,
                  ),

                  //-----------------CS MODEL PHOTOS -----
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            height: 350,
                            width: 700,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('/images/CSwebsite-10.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 350,
                                width: 350,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('/images/CSwebsite-3.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 350,
                                width: 350,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('/images/CSwebsite-28.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        height: 700,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('/images/CSwebsite-16.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  //--------------------PRODUCTS SECTION------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3,
                        width: 100,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Our Products",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 72,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 3,
                        width: 100,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  // ------ CASTOR OILS
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "All Natural Haitian Castor Oils",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 48,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductItem(
                        id: "1",
                        title: "Original Haitian Castor Oil",
                        price: "\$20.00",
                        imageUrl: "/images/CS1Bottle.png",
                      ),
                      ProductItem(
                        id: "2",
                        title: "Vanilla Haitian Castor Oil",
                        price: "\$20.00",
                        imageUrl: "/images/CS1Bottle.png",
                      ),
                      ProductItem(
                        id: "3",
                        title: "Peppermint Haitian Castor Oil",
                        price: "\$20.00",
                        imageUrl: "/images/CS1Bottle.png",
                      ),
                    ],
                  ),
                  SizedBox(height: 100),

                  // -- SECRET COLLECTION/SUBSCRIPTION VIEW
                  SecretCollectionView(),
                  SizedBox(height: 50),

                  // -------------- BROTHERS VIDEO ------------------
                  Container(
                    width: 600,
                    height: 600,
                    child: Image(
                      image: AssetImage('/images/CSwebsite-20.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 400,
                    width: screen.screenWidth,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SubscriptionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenDimensions(context);
    return Stack(
      children: [
        Container(
          width: screen.screenWidth,
          height: 450,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('/images/secret_hands.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
            child: Container(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 400,
            width: screen.screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Subscribe To Unlock The Secret Collection!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 72,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 50,
                ),
                SubscribeField(subscribeStatusChanged: () {
                  subscribed = true;
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SecretCollectionView extends StatefulWidget {
  @override
  _SecretCollectionViewState createState() => _SecretCollectionViewState();
}

class _SecretCollectionViewState extends State<SecretCollectionView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        subscribed = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        child: subscribed ? SecretCollectionPurchaseView() : SubscriptionView(),
        duration: Duration(seconds: 2));
  }
}

class SecretCollectionPurchaseView extends StatefulWidget {
  @override
  _SecretCollectionPurchaseViewState createState() =>
      _SecretCollectionPurchaseViewState();
}

class _SecretCollectionPurchaseViewState
    extends State<SecretCollectionPurchaseView> {
  bool glowing = false;
  @override
  Widget build(BuildContext context) {
    var screen = ScreenDimensions(context);
    return Container(
      width: screen.screenWidth,
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/secret_hands.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Center(
        child: GlowingText(),
      ),
    );

    // Container(
    //   height: 50,
    //   width: 450,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       color: Colors.white12,
    //       border: Border.all(
    //           color: Colors.white, width: 1, style: BorderStyle.solid)),
    //   child: FlatButton(
    //     onPressed: () {},
    //     child: Text(
    //       "LEARN MORE",
    //       style: TextStyle(
    //           color: Colors.white,
    //           fontWeight: FontWeight.w300,
    //           fontSize: 18),
    //     ),
    //   ),
    // ),
  }
}
