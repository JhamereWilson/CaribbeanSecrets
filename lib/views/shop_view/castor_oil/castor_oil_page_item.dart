import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil/castor_oil_page_item_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil/castor_oil_page_item_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'castor_oil_page_item_mobile.dart';

class CatorOilPageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CastorOilPageItemMobile(),
      tablet: CastorOilPageItemTablet(),
      desktop: CastorOilPageItemDesktop(),
    );
  }
}