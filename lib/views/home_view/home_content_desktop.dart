import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../views.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroView(),
        SizedBox(height: 200),
        CenteredView(
          child: BlogSection(),
        ),
        SizedBox(height: 200),
        ProductSection(),
        SizedBox(height: 200),
        Footer(),
      ],
    );
  }
}
