import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil/castor_oil_shop_view._tab.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil/castor_oil_shop_view_desk.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/castor_oil/castor_oil_shop_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CastorOilView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CastorOilViewMobile(),
      tablet: CastorOilViewTablet(),
      desktop: CastorOilViewDesktop(),
    );
  }
}
