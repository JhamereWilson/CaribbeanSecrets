import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final loadedProducts = productsData.oils;
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.horizontal,
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        id: loadedProducts[i].id,
        title: loadedProducts[i].title,
        price: loadedProducts[i].price,
        imageUrl: loadedProducts[i].imageUrl,
      ),
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     childAspectRatio: 3 / 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10),
    );
  }
}
