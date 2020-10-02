import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class SecretIngredientContainerDesktop extends StatefulWidget {
  const SecretIngredientContainerDesktop({
    Key key,
  }) : super(key: key);

  @override
  _SecretIngredientContainerDesktopState createState() =>
      _SecretIngredientContainerDesktopState();
}

class _SecretIngredientContainerDesktopState
    extends State<SecretIngredientContainerDesktop> {
  bool hover1 = false;
  bool hover2 = false;
  bool hover3 = false;
  bool hover4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenDimensions(context).screenWidth,
      height: ScreenDimensions(context).screenHeight,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            onHover: (value) {
              if (value == true) {
                setState(() {
                  hover1 = true;
                });
              } else {
                setState(() {
                  hover1 = false;
                });
              }
            },
            child: Container(
                height: ScreenDimensions(context).screenHeight,
                width: ScreenDimensions(context).screenWidth / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/coconut.jpg"),
                        colorFilter:
                            ColorFilter.mode(Colors.black45, BlendMode.darken),
                        fit: BoxFit.fitHeight),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.4),
                        width: 0.5,
                        style: BorderStyle.solid)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedOpacity(
                      opacity: hover1 ? 0.6 : 0,
                      duration: Duration(milliseconds: 250),
                      child: Text(
                        "CASTOR OIL",
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 72,
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
                            fontSize: 72,
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
                            fontSize: 72,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {},
            onHover: (value) {
              if (value == true) {
                setState(() {
                  hover2 = true;
                });
              } else {
                setState(() {
                  hover2 = false;
                });
              }
            },
            child: Container(
              height: ScreenDimensions(context).screenHeight,
              width: ScreenDimensions(context).screenWidth / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/mint.jpg"),
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.fitHeight),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 0.5,
                      style: BorderStyle.solid)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedOpacity(
                    opacity: hover2 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "THYME",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
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
                          fontSize: 69,
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
                          fontSize: 72,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            onHover: (value) {
              if (value == true) {
                setState(() {
                  hover3 = true;
                });
              } else {
                setState(() {
                  hover3 = false;
                });
              }
            },
            child: Container(
              height: ScreenDimensions(context).screenHeight,
              width: ScreenDimensions(context).screenWidth / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/aloe.jpg"),
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.fitHeight),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 0.5,
                      style: BorderStyle.solid)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedOpacity(
                    opacity: hover3 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "SHEA",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
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
                          fontSize: 72,
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
                          fontSize: 72,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            onHover: (value) {
              if (value == true) {
                setState(() {
                  hover4 = true;
                });
              } else {
                setState(() {
                  hover4 = false;
                });
              }
            },
            child: Container(
              height: ScreenDimensions(context).screenHeight,
              width: ScreenDimensions(context).screenWidth / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/honey.jpg"),
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.darken),
                    fit: BoxFit.fitHeight,
                  ),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                      width: 0.5,
                      style: BorderStyle.solid)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedOpacity(
                    opacity: hover4 ? 0.6 : 0,
                    duration: Duration(milliseconds: 250),
                    child: Text(
                      "H20",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
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
                          fontSize: 72,
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
                          fontSize: 72,
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
