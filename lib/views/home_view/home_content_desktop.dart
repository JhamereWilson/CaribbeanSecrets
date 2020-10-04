import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/views/products/product_section.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/secret_collection_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';
import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                HeroView(),
                SizedBox(height: 30),
                Align(
                    alignment: Alignment.center,
                    child: LogoView(height: 300, width: 600)),
                SizedBox(height: 30),
                ModelPhotos(),
                SizedBox(height: 50),
                ProductSection(),
                SizedBox(height: 50),
                SecretCollectionView(),
                SizedBox(height: 50),
                // Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
