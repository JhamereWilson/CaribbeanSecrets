import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

import '../animated_text.dart';

class HeroViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Stack(
      children: [
        Container(
          height: screen.screenHeight,
          width: screen.screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('/images/CSwebsite-9.jpg'),
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 100,
          right: 1,
          child: AnimatedText(fontSize: 140),
        ),
      ],
    );
  }
}
