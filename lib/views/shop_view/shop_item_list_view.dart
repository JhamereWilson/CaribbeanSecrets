import 'package:auto_size_text/auto_size_text.dart';
import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/products/products_list.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_collection_shop_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopItemListView extends StatefulWidget {
  ShopItemListView({Key key}) : super(key: key);

  @override
  _ShopItemListViewState createState() => _ShopItemListViewState();
}

class _ShopItemListViewState extends State<ShopItemListView> {
  PageController controller;

  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
    return ListView(
        scrollDirection: Axis.vertical,
        controller: controller,
        physics: BouncingScrollPhysics(),
        children: [
          ProductsList(),
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
                        AutoSizeText(
                          "Subscribe to Unlock the Secret Collection!",
                          maxFontSize: 50,
                          minFontSize: 24,
                          maxLines: 1,
                          wrapWords: false,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                            height:
                                ScreenDimensions(context).screenHeight * .05),
                        Expanded(child: SubscribeField()),
                      ],
                    ),
                  ),
          ),
        ]);
  }
}
