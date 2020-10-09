import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton(
      {Key key, this.height, this.width, this.action, this.fontSize})
      : super(key: key);
  final num height;
  final num width;
  final Function action;
  final num fontSize;

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.orange,
          Colors.yellow,
          Colors.green,
          Colors.teal,
          Colors.blue,
          Colors.purple,
          Colors.deepPurple
        ]),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.black,
          ),
          child: FlatButton(
            onPressed: () {
              action();
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
                  content: Container(
                    height: screen.screenHeight * 0.025,
                    width: screen.screenWidth * 0.05,
                    child: Center(
                      child: Text(
                        'Added item to cart!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: fontSize),
                      ),
                    ),
                  ),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: Text(
              "ADD TO CART",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize),
            ),
          ),
        ),
      ),
    );
  }
}
