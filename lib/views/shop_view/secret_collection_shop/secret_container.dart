import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop/secret_container_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'secret_container_mobile.dart';

class SecretIngredientContainer extends StatelessWidget {
  const SecretIngredientContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SecretIngredientContainerMobile(),
      desktop: SecretIngredientContainerDesktop(),
    );
  }
}
