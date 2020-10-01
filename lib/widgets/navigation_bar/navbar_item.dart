import 'package:caribbean_secrets_ecommerce/models/navbar_item_model.dart';
import 'package:caribbean_secrets_ecommerce/services/navigation_services.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_bar/navbar_item_desktop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';

// ignore: unused_element
class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem({this.title, this.navigationPath});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
    );

    return InkWell(
        onTap: () {
          print(navigationPath + " button tapped");
          Navigator.of(context).pushNamed(navigationPath);
        },
        child: Provider.value(
          value: model,
          child: NavBarItemTabletDesktop(),
        ));
  }
}
