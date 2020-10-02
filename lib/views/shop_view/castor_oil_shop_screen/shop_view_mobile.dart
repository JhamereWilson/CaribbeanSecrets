import 'package:caribbean_secrets_ecommerce/shared/blinking_text.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShopViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
      endDrawer: CartScreenMobile(),
      body: Column(
        children: [
          NavigationBarMobile(
            scaffKey: scaffoldKey,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavigationRow(
                          currentPage: "Shop",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: BlinkingText(
                            fontSize: 10,
                            text: "Scroll Down",
                            fontWeight1: FontWeight.w100,
                            fontWeight2: FontWeight.w200,
                            duration: Duration(seconds: 2),
                            color1: Colors.white,
                            color2: Colors.white.withOpacity(0.2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(
                      height: 1,
                      color: Colors.white,
                      thickness: 0.5,
                    ),
                    Container(height: 400, child: CastorOilItemPageView()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
