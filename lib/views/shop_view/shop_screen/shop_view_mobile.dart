import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShopViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBarMobile(),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    NavigationRow(
                      currentPage: "Shop",
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
