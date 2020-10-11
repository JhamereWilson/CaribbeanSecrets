import 'package:auto_size_text/auto_size_text.dart';
import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CastorOilPageItemMobile extends StatelessWidget {
  const CastorOilPageItemMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    final screen = ScreenDimensions(context);
    return Container(
      height: screen.screenHeight * 0.6,
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(height: screen.screenHeight * 0.1),
          Align(
            alignment: Alignment.center,
            child: Text(
              product.title,
              maxLines: 3,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: screen.screenHeight * 0.25,
            width: screen.screenWidth * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/CS1Bottle.png"),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AutoSizeText(
              product.description,
              maxFontSize: 24,
              minFontSize: 16,
              maxLines: 3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
            ),
          ),
           SizedBox(height: screen.screenHeight * 0.05),
          AddToCartButton(
              height: screen.screenHeight * 0.05,
              width: screen.screenWidth * 0.5,
              fontSize: 12,
              action: () {
                cart.addItem(product.id, product.price, product.title,
                    product.imageUrl, product.squarePrice);
              }),
        ],
      ),
    );
  }
}
