import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/cart/checkout_form.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkout_web_view.dart';

class CheckoutScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final url =
        ModalRoute.of(context).settings.arguments as String;
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          NavigationBarTabDesk(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: CheckoutWebView(url: url),
            ),
          ),
        ]));
  }
}
