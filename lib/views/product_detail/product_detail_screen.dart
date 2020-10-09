import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_screen_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_screen_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_screen_tablet.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episode_player_view.dart';

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProductDetailMobileView(),
      tablet: ProductDetailTabletView(),
      desktop: ProductDetailDesktopView(),
    );
  }
}
