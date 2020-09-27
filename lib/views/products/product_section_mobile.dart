import 'package:caribbean_secrets_ecommerce/widgets/products/products_list.dart';
import 'package:flutter/material.dart';

class ProductSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
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
                  fontSize: 56,
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
        SizedBox(height: 20),
        // ------ CASTOR OILS
        Align(
          alignment: Alignment.center,
          child: Text(
            "All Natural Haitian Castor Oils",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 36,
                fontWeight: FontWeight.w100),
          ),
        ),
        SizedBox(height: 20),
        Container(height: 250, child: Center(child: ProductsList())),
        SizedBox(height: 20),

        // -- SECRET COLLECTION/SUBSCRIPTION VIEW
        // SecretCollectionView(),
        // SizedBox(height: 50),
      ],
    ));
  }
}
