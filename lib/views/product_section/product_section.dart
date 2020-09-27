import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'product_section_mobile.dart';

class ProductSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ProductSectionDesktop(),
      mobile: ProductSectionMobile(),
    );
  }
}
