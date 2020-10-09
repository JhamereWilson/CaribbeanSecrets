import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/shared/blinking_text.dart';
import 'package:caribbean_secrets_ecommerce/views/animated_text.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/animated_text/animated_text_desktop.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          Navigator.of(context).pushNamed(CartRoute);
        },
        backgroundColor: Colors.transparent,
        focusColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        hoverColor: Colors.black,
        splashColor: Colors.black,
        child: Consumer<Cart>(
          builder: (_, cartData, ch) => Badge(
            fontSize: 16,
            topPosition: 4,
            //ch is passed into the consumer where the child is defined
            value: cartData.itemCount == 0 ? "" : cartData.itemCount.toString(),
            child: ch,
          ),
          child: Icon(Icons.shopping_cart, color: Colors.red, size: 42),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: CenteredView(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavigationRow(
                        currentPage: "Shop",
                      ),
                      BlinkingText(
                        fontSize: 12,
                        text: "Scroll Down",
                        fontWeight1: FontWeight.w100,
                        fontWeight2: FontWeight.w200,
                        duration: Duration(seconds: 2),
                        color1: Colors.white,
                        color2: Colors.white.withOpacity(0.2),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(
                    height: 1,
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                  Container(height: 800, child: CastorOilItemPageView()),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
