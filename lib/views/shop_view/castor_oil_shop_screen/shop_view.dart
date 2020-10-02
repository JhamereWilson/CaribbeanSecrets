import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil_shop_screen/shop_view_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil_shop_screen/shop_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';


import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'shop_view_tablet.dart';

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
