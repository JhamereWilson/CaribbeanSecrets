
import 'package:caribbean_secrets_ecommerce/services/navigation_services.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

// ignore: unused_element
class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
         print("button tapped");
        locator<NavigationService>().navigateTo(navigationPath);
       
      },
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
      ),
    );
  }
}
