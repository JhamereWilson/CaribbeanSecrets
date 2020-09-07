import 'dart:html';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class HeroViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Stack(
      children: [
         Container(
      width: screen.screenWidth,
      height: 400,
      decoration: BoxDecoration(
        // color: Colors.red[900],
        image: DecorationImage(
          image: AssetImage('/images/autumn.jpg'),
          fit: BoxFit.fitWidth,
          // colorFilter: ColorFilter.mode(
          //     Colors.red[900].withOpacity(0.6), BlendMode.overlay),
        ),
      ),
  
    ),
      Center(child: Text("The Deeper the Secret", style: TextStyle(fontSize: 24),)), 
      ],
    );
  }
}
