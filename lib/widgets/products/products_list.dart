import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/widgets/products/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.oils;
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductItem(),
      ),
    );
  }
}
