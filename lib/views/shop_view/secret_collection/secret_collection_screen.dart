import 'dart:async';
import 'dart:html';

import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/shared/fade_in.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/secret_collection_view.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscription_view/subscription_view.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_collection_page_view/secret_collection_page_view.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_container.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecretCollectionScreen extends StatelessWidget {
  const SecretCollectionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
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
            //ch is passed into the consumer where the child is defined
            value: cartData.itemCount == 0 ? "" : cartData.itemCount.toString(),
            child: ch,
          ),
          child: Icon(Icons.shopping_cart, color: Colors.white, size: 42),
        ),
      ),
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
              child: ListView(
            children: [
              NavigationRow(
                currentPage: "Secret Collection",
              ),
              SizedBox(height: 15),
              Divider(
                height: 1,
                color: Colors.white,
                thickness: 0.5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 500,
                  width: 500,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: AnimatedFadeInText(
                      duration: Duration(seconds: 1),
                      text:
                          "Caribbean Secrets' Secret Collection gives you all the products that you need for a healthy hair care regimen.",
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 200,
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: AnimatedFadeInText(
                      duration: Duration(seconds: 3),
                      text: "But what makes a deep secret?",
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SecretIngredientContainer(),
              SizedBox(height: 60),
              subscribe.isSubscribed
                  ? Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Swipe right to learn more.",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 12,
                            fontWeight: FontWeight.w100),
                      ),
                    )
                  : Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Subscribe Below to Unlock the Secret Collection",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
              SizedBox(height: 30),
              subscribe.isSubscribed
                  ? Container(
                      height: 600,
                      width: ScreenDimensions(context).screenWidth,
                      child: SecretCollectionPageView())
                  : SubscribeField(),
              SizedBox(height: 60),
              Footer(),
            ],
          )),
        ],
      ),
    );
  }
}

class AnimatedFadeInText extends StatefulWidget {
  AnimatedFadeInText(
      {Key key,
      this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      @required this.duration})
      : super(key: key);
  final String text;
  final Color color;
  final num fontSize;
  final FontWeight fontWeight;
  final Duration duration;

  @override
  _AnimatedFadeInTextState createState() => _AnimatedFadeInTextState();
}

class _AnimatedFadeInTextState extends State<AnimatedFadeInText> {
  bool isOpaque = true;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(widget.duration, () {
      setState(() {
        isOpaque = false;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: isOpaque ? 0 : 1,
        duration: widget.duration,
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.color,
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight),
        ));
  }
}
