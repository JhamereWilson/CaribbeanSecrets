

import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../views.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroView(),
        SizedBox(height: 100),
        CenteredView(
          child: BlogSection(),
        ),
        SizedBox(height: 100),
        ProductSection(),
        SizedBox(height: 100),
        Footer(),
        SizedBox(
          height: 30,
        ),
        Text(
          "2020 Caribbean Secrets.",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
