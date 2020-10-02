import 'package:caribbean_secrets_ecommerce/widgets/products/products_list.dart';
import 'package:flutter/material.dart';

class ProductSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1.5,
              width: 25,
              color: Colors.white70,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Our Products",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 28,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 1.5,
              width: 25,
              color: Colors.white70,
            ),
          ],
        ),
        SizedBox(height: 10),
        // ------ CASTOR OILS
        Align(
          alignment: Alignment.center,
          child: Text(
            "All Natural Haitian Castor Oils",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 24,
                fontWeight: FontWeight.w100),
          ),
        ),
        SizedBox(height: 10),
        Container(height: 250, child: Center(child: ProductsList())),
        SizedBox(height: 10),

        // -- SECRET COLLECTION/SUBSCRIPTION VIEW
        // SecretCollectionView(),
        // SizedBox(height: 50),
      ],
    );
  }
}
