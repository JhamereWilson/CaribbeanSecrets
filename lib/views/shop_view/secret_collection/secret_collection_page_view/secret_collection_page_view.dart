import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/secret_collection/secret_collection_page_view/secret_collection_page_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecretCollectionPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.collectionItems;

    return PageView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: SecretCollectionPageItem(),
      ),
    );
  }
}
