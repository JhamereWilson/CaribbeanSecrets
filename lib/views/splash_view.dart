import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenDimensions(context).screenHeight,
      width: ScreenDimensions(context).screenWidth,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Center(
        child: Container(
          height: ScreenDimensions(context).screenHeight / 2,
          width: ScreenDimensions(context).screenWidth / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/cs_transparent_logo.png"))),
        ),
      ),
    );
  }
}
