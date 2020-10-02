import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecretCollectionPageItemDesktop extends StatelessWidget {
  const SecretCollectionPageItemDesktop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Container(
      height: 800,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 800,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(product.imageUrl), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 500,
            color: Colors.white,
            width: 1,
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
                        fontSize: 120,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.threeDetails[1],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.threeDetails[2],
                    style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 600,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.title,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        product.description,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
