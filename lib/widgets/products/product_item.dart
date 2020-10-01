import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/products/product_item_desktop.dart';
import 'package:caribbean_secrets_ecommerce/widgets/products/product_item_mobile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProductItemMobile(),
      desktop: ProductItemDesktop(),
    );
  }
}
