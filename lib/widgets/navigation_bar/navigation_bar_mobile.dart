import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../badge.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffKey;

  const NavigationBarMobile({Key key, this.scaffKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                color: Colors.white,
                iconSize: 24,
                onPressed: () => scaffKey.currentState.openDrawer(),
                icon: Icon(Icons.menu),
              ),
              LogoView(
                height: 40,
                width: 80,
              ),
              Consumer<Cart>(
                builder: (_, cartData, ch) => Badge(
                  fontSize: 12,
                  topPosition: 12,
                  //ch is passed into the consumer where the child is defined
                  value: cartData.itemCount == 0
                      ? ""
                      : cartData.itemCount.toString(),
                  child: ch,
                ),
                child: IconButton(
                    onPressed: () => scaffKey.currentState.openEndDrawer(),
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.white,
                    iconSize: 24),
              ),
            ],
          ),
        ));
  }
}
