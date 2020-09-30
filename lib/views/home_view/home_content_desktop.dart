import 'package:caribbean_secrets_ecommerce/views/products/product_section.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/secret_collection_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../views.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // NavigationBar(),
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
        Footer(),
      ],
    );
  }
}
