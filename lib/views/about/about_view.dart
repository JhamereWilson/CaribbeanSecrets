import 'package:caribbean_secrets_ecommerce/views/about/about_view_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/about/about_view_mobile.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutViewMobile(),
      desktop: AboutViewDesktop(),
    );
  }
}
