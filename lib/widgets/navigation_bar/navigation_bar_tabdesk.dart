import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class NavigationBarTabDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NavBarItem(title: "Shop", navigationPath: ShopRoute),
          NavBarItem(title: "Blog", navigationPath: BlogRoute),
          LogoView(
            height: 70,
            width: 150,
          ),
          NavBarItem(title: "Secrets TV", navigationPath: SecretsTVRoute),
          NavBarItem(title: "Our Story", navigationPath: AboutRoute),
        ],
      ),
    );
  }
}
