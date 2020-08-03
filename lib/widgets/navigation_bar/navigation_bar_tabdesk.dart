import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class NavigationBarTabDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoView(
          height: 100,
          width: 200,
        ),
        Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NavBarItem("Shop", ShopRoute),
                NavBarItem("Blog", BlogRoute),
                NavBarItem("Community", CommunityRoute),
                NavBarItem("Our Story", AboutRoute),
              ],
            )),
      ],
    );
  }
}
