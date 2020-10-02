import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop/secret_collection_screens/secret_collection_screen_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop/secret_collection_screens/secret_collection_screen_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SecretCollectionScreen extends StatelessWidget {
  const SecretCollectionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SecretCollectionScreenMobile(),
      desktop: SecretCollectionScreenDesktop(),
    );
  }
}
