import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecretCollectionPageItemMobile extends StatelessWidget {
  const SecretCollectionPageItemMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Container(
      height: 800,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              product.title,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    product.threeDetails[0],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.threeDetails[1],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.threeDetails[2],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(product.imageUrl),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
                      child: Container(
              padding: EdgeInsets.all(8),
              height: 100,
              width: ScreenDimensions(context).screenWidth,
              child: Text(
                product.description,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
