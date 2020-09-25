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
        children: <Widget>[
          NavBarItem(title: "Shop", navigationPath: ShopRoute),
          // NavBarItem(title: "Blog", navigationPath: BlogRoute),
          LogoView(
            height: 50,
            width: 100,
          ),
          // NavBarItem(title: "Community", navigationPath: CommunityRoute),
          NavBarItem(title: "Our Story", navigationPath: AboutRoute),
        ],
      ),
    );
  }
}
