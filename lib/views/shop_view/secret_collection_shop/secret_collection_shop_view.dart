import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection_shop/secret_collection_shop_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'secret_collection_shop_view_mobile.dart';
import 'secret_collection_shop_view_tab.dart';

class SecretCollectionShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SecretCollectionShopViewMobile(),
      tablet: SecretCollectionShopViewTablet(),
      desktop: SecretCollectionShopViewDesktop(),
    );
  }
}
