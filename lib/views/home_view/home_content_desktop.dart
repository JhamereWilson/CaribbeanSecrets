import 'package:caribbean_secrets_ecommerce/views/product_section/product_section.dart';
import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../views.dart';

class HomeContentDesktop extends StatelessWidget {
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
        // Footer(),
      ],
    );
  }
}
