import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscription_view.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop_view.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'castor_oil_shop_view.dart';

class ShopItemPageView extends StatefulWidget {
  ShopItemPageView({Key key}) : super(key: key);

  @override
  _ShopItemPageViewState createState() => _ShopItemPageViewState();
}

class _ShopItemPageViewState extends State<ShopItemPageView> {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    // pageController
    //     .addListener(updatePageState); // add listener to page controller.
  }

  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
    return PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        physics: BouncingScrollPhysics(),
        children: [
          CastorOilView(),
          AnimatedSwitcher(
            duration: Duration(seconds: 2),
            child: subscribe.isSubscribed
                ? SecretCollectionShopView()
                : Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          "Subscribe to Unlock the Secret Collection!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 50),
                        Expanded(child: SubscribeField()),
                      ],
                    ),
                  ),
          ),
        ]);
  }
}
