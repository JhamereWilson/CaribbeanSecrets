import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
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
                        currentPage: "Blog",
                      ),
                      SizedBox(height: 15),
                      Divider(
                        height: 1,
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
