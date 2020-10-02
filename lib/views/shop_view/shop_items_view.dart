import 'package:caribbean_secrets_ecommerce/providers/products.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'castor_oil/castor_oil_page_item.dart';

class CastorOilItemPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.oils;

    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: CatorOilPageItem(),
      ),
    );
  }
}

//  AnimatedSwitcher(
//             duration: Duration(seconds: 2),
//             child: subscribe.isSubscribed
//                 ? SecretCollectionShopView()
//                 : Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 50),
//                         AutoSizeText(
//                           "Subscribe to Unlock the Secret Collection!",
//                           maxFontSize: 50,
//                           minFontSize: 24,
//                           maxLines: 1,
//                           wrapWords: false,
//                           style: TextStyle(
//                               color: Colors.white, fontWeight: FontWeight.w900),
//                         ),
//                         SizedBox(
//                             height:
//                                 ScreenDimensions(context).screenHeight * .05),
//                         Expanded(child: SubscribeField()),
//                       ],
//                     ),
//                   ),
//           ),
