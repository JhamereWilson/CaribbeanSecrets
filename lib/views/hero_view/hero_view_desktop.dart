import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class HeroViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Container(
      width: screen.screenWidth,
      height: 600,
      decoration: BoxDecoration(
        // color: Colors.red[900],
        image: DecorationImage(
          image: AssetImage('/images/autumn.jpg'),
          fit: BoxFit.fitWidth,
          // colorFilter: ColorFilter.mode(
          //     Colors.red[900].withOpacity(0.6), BlendMode.overlay),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              "The Deeper The Secret",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 120,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Text(
              "The Better The Beauty",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 120,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
