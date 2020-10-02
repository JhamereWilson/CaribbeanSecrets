import 'package:caribbean_secrets_ecommerce/widgets/centered_view/centered_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/footer/footer.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AboutViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
