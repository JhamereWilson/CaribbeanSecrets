
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabDesk(),
    );
  }
}
