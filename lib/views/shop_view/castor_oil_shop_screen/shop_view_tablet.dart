import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShopViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawerEnableOpenDragGesture: false,
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          NavigationBarMobile(),
          NavigationRow(
            currentPage: "Shop",
          ),
          SizedBox(height: 15),
          Divider(
            height: 1,
            color: Colors.white,
            thickness: 0.5,
          ),
          Container(height: 600, child: CastorOilItemPageView()),
          Footer(),
        ],
      ),
    );
  }
}
