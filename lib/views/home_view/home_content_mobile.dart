import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/views/blog/blog_section.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/products/product_section.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/secret_collection_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';

import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.black,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
      endDrawer: CartScreenMobile(),
      key: scaffoldKey,
      body: Column(
        children: [
          NavigationBarMobile(
            scaffKey: scaffoldKey,
          ),
          Expanded(
            child: ListView(
              children: [
                HeroView(),
                SizedBox(height: 15),
                Align(
                    alignment: Alignment.center,
                    child: LogoView(height: 300, width: 600)),
                SizedBox(height: 15),
                ModelPhotos(),
                SizedBox(height: 25),
                ProductSection(),
                SecretCollectionView(),

                //TODO: Find alternative method for Footers in Mobile
              ],
            ),
          ),
        ],
      ),
    );
  }
}
