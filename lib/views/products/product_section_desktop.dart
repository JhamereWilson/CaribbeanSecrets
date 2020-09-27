import 'package:caribbean_secrets_ecommerce/widgets/products/products_list.dart';
import 'package:flutter/material.dart';

class ProductSectionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 3,
              width: 100,
              color: Colors.white70,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Our Products",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 72,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 3,
              width: 100,
              color: Colors.white70,
            ),
          ],
        ),
        SizedBox(height: 60),
        // ------ CASTOR OILS
        Align(
          alignment: Alignment.center,
          child: Text(
            "All Natural Haitian Castor Oils",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 48,
                fontWeight: FontWeight.w100),
          ),
        ),
        SizedBox(height: 30),
        Container(height: 500, child: Center(child: ProductsList())),
        SizedBox(height: 50),

        // -- SECRET COLLECTION/SUBSCRIPTION VIEW
        // SecretCollectionView(),
        // SizedBox(height: 50),
      ],
    );
  }
}
