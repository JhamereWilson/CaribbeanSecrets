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
    return Container(
      height: 650,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 50,
              child: Center(
                child: Text(
                  product.title,
                  maxLines: 3,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("/images/CS1Bottle.png"),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              width: 300,
              child: Center(
                child: Text(
                  product.description,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
          ),
          AddToCartButton(
              height: 40,
              width: 150,
              fontSize: 24,
              action: () {
                cart.addItem(product.id, product.price, product.title,
                    product.imageUrl, product.squarePrice);
              }),
        ],
      ),
    );
  }
}
