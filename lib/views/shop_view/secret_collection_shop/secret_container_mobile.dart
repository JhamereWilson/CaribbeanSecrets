import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class SecretIngredientContainerMobile extends StatefulWidget {
  const SecretIngredientContainerMobile({
    Key key,
  }) : super(key: key);

  @override
  _SecretIngredientContainerMobileState createState() =>
      _SecretIngredientContainerMobileState();
}

class _SecretIngredientContainerMobileState
    extends State<SecretIngredientContainerMobile> {
  bool hover1 = false;
  bool hover2 = false;
  bool hover3 = false;
  bool hover4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenDimensions(context).screenWidth,
      height: ScreenDimensions(context).screenHeight,
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            onLongPress: () => hover1 = true,
            child: Container(
                height: ScreenDimensions(context).screenHeight / 4,
                width: ScreenDimensions(context).screenWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/coconut.jpg"),
                        colorFilter:
                            ColorFilter.mode(Colors.black45, BlendMode.darken),
                        fit: BoxFit.fitWidth),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.4),
                        width: 0.5,
                        style: BorderStyle.solid)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      opacity: hover1 ? 0.6 : 0,
                      duration: Duration(milliseconds: 250),
                      child: Text(
                        "CASTOR OIL",
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: hover1 ? 0.6 : 0.3,
                      duration: Duration(milliseconds: 250),
                      child: Text(
                        "COCONUT",
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: hover1 ? 0.6 : 0,
                      duration: Duration(milliseconds: 250),
                      child: Text(
                        "HEMP SEED",
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {},
            onLongPress: () => hover2 = true,
            child: Container(
              height: ScreenDimensions(context).screenHeight / 4,
              width: ScreenDimensions(context).screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/mint.jpg"),
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.fitWidth),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 0.5,
                      style: BorderStyle.solid)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: hover2 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "THYME",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: hover2 ? 0.6 : 0.3,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "PEPPERMINT",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: hover2 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "HIBISCUS",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            onLongPress: () => hover3 = true,
            child: Container(
              height: ScreenDimensions(context).screenHeight / 4,
              width: ScreenDimensions(context).screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/aloe.jpg"),
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.fitWidth),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 0.5,
                      style: BorderStyle.solid)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: hover3 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "SHEA",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: hover3 ? 0.6 : 0.3,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "ALOE VERA",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: hover3 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "CRANBERRY",
                      maxLines: 2,
                      style: TextStyle(
                          letterSpacing: -1,
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            onLongPress: () => hover4 = true,
            child: Container(
              height: ScreenDimensions(context).screenHeight / 4,
              width: ScreenDimensions(context).screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/honey.jpg"),
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.darken),
                    fit: BoxFit.fitWidth,
                  ),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 0.5,
                      style: BorderStyle.solid)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: hover4 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "H20",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: hover4 ? 0.6 : 0.3,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "HONEY",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: hover4 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "OLIVE",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
