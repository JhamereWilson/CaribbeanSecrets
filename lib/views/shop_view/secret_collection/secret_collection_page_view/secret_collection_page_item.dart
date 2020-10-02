import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_collection_page_view/secret_collection_page_item_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_collection_page_view/secret_collection_page_item_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_collection_page_view/secret_collection_page_item_tab.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SecretCollectionPageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SecretCollectionPageItemMobile(),
      tablet: SecretCollectionPageItemTablet(),
      desktop: SecretCollectionPageItemDesktop(),
    );
  }
}
