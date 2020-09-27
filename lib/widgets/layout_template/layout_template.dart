import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/routing/router.dart';

import 'package:caribbean_secrets_ecommerce/services/navigation_services.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';
import '../badge.dart';

class LayoutTemplate extends StatelessWidget {
  // final Widget child;

  // const LayoutTemplate({@required this.child});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) => Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 2.0,
          onPressed: () {
            locator<NavigationService>().navigateTo(CartRoute);
          },
          backgroundColor: Colors.transparent,
          focusColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          hoverColor: Colors.black,
          splashColor: Colors.black,
          child: Consumer<Cart>(
            builder: (_, cartData, ch) => Badge(
              //ch is passed into the consumer where the child is defined
              value:
                  cartData.itemCount == 0 ? "" : cartData.itemCount.toString(),
              child: ch,
            ),
            child: Icon(Icons.shopping_cart, color: Colors.white, size: 42),
          ),
        ),
        drawer: sizingInfo.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            NavigationBar(),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                // child: child,
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
