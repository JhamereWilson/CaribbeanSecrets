


import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../views.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
