
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';
class NavigationDrawerHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black87,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LogoView(height: 60, width: 120),
          
          
        ],
      ),
    );
  }
}