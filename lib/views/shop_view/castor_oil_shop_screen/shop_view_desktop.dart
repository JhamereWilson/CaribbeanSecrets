import 'package:caribbean_secrets_ecommerce/shared/blinking_text.dart';
import 'package:caribbean_secrets_ecommerce/views/animated_text.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_items_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/animated_text/animated_text_desktop.dart';
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
