import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_screen/shop_view_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_screen/shop_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_screen/shop_view_tablet.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ShopViewMobile(),
      tablet: ShopViewTablet(),
      desktop: ShopViewDesktop(),
    );
  }
}
