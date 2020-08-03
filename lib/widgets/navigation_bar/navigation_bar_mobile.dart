
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.person_outline, color: Colors.transparent,),
              LogoView(
                height: 80,
                width: 160,
              ),
              Icon(
                Icons.menu,
                color: Colors.white,
                size: 36,
              ),
            ],
          ),
        ));
  }
}
