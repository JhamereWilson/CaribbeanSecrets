

import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.black,),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(icon: Icons.shopping_cart, title: "Shop", navigationPath: ShopRoute),
          DrawerItem(icon: Icons.live_tv, title: "SecretsTV", navigationPath: BlogRoute),
          DrawerItem(icon: Icons.nature, title: "Community", navigationPath: BlogRoute),
          DrawerItem(icon: Icons.people, title: "Our Story",navigationPath: AboutRoute),
        ],
      ),
    );
  }
}
