import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/widgets/badge.dart';
import 'package:caribbean_secrets_ecommerce/widgets/centered_view/centered_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/footer/footer.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutViewDesktop extends StatelessWidget {
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
            //ch is passed into the consumer where the child is defined
            value: cartData.itemCount == 0 ? "" : cartData.itemCount.toString(),
            child: ch,
          ),
          child: Icon(Icons.shopping_cart, color: Colors.white, size: 42),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: ListView(
              children: [
                CenteredView(
                  child: Column(
                    children: [
                      NavigationRow(
                        currentPage: "Our Story",
                      ),
                      SizedBox(height: 15),
                      Divider(
                        height: 1,
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 600,
                        width: 1200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("/images/CSwebsite-20.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Caribbean Secrets Cosmetics is formulated by three brothers of Haitian descent to provide top quality hair products for multicultural men and women around the world.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w100),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Our mission is to unite all people of the African diaspora through educating and upholding haircare traditions that have been ingrained in our cultures for centuries.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
