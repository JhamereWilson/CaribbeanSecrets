import 'package:caribbean_secrets_ecommerce/views/blog/blog_section.dart';
import 'package:caribbean_secrets_ecommerce/views/products/product_section.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/secret_collection_view.dart';

import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../views.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.black,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
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
                SizedBox(height:15),
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
