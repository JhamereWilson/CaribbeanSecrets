import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'secret_collection_page_item_desktop.dart';
import 'secret_collection_page_item_mobile.dart';
import 'secret_collection_page_item_tab.dart';

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
