import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShopViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text("Scroll Down", style: TextStyle(color: Colors.white.withOpacity(0.3), fontWeight: FontWeight.w100, fontSize: 14),)
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(
                    height: 1,
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                  Container(height: 800, child: CastorOilItemPageView()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
