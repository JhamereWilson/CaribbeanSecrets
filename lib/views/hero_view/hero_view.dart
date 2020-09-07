import 'package:caribbean_secrets_ecommerce/views/hero_view/hero_view_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/hero_view/hero_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HeroViewDesktop(),
      mobile: HeroViewMobile(),
    );
  }
}
