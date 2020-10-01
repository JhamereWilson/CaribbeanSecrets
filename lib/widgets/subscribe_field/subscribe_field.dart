import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field_desktop.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field_mobile.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field_tab.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SubscribeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SubscribeFieldMobile(),
      tablet: SubscribeFieldTablet(),
      desktop: SubscribeFieldDesktop(),
    );
  }
}
