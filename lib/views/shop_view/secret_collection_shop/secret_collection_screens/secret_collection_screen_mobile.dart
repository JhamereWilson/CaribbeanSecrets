import 'dart:async';

import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/shared/blinking_text.dart';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop/secret_collection_page_view/secret_collection_page_view.dart';

import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop/secret_container.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecretCollectionScreenMobile extends StatelessWidget {
  const SecretCollectionScreenMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
              child: ListView(
            children: [
              NavigationRow(
                currentPage: "Secret Collection",
              ),
              SizedBox(height: 10),
              Divider(
                height: 1,
                color: Colors.white,
                thickness: 0.5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: AnimatedFadeInText(
                      duration: Duration(seconds: 1),
                      text:
                          "Caribbean Secrets' Secret Collection gives you all the products that you need for a healthy hair care regimen.",
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: AnimatedFadeInText(
                      duration: Duration(seconds: 3),
                      text: "But what makes a deep secret?",
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SecretIngredientContainer(),
              SizedBox(height: 30),
              subscribe.isSubscribed
                  ? Align(
                      alignment: Alignment.center,
                      child: BlinkingText(
                          fontSize: 8,
                          text: "Swipe Right to Learn More",
                          fontWeight1: FontWeight.w100,
                          fontWeight2: FontWeight.w100,
                          color1: Colors.white,
                          color2: Colors.white.withOpacity(0.2),
                          duration: Duration(seconds: 2)))
                  : Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Subscribe Below to Unlock the Secret Collection",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
              SizedBox(height: 15),
              subscribe.isSubscribed
                  ? Container(
                      height: 300,
                      width: ScreenDimensions(context).screenWidth,
                      child: SecretCollectionPageView())
                  : SubscribeField(),
              SizedBox(height: 30),
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
