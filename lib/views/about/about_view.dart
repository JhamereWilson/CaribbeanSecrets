
import 'package:caribbean_secrets_ecommerce/widgets/centered_view/centered_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/footer/footer.dart';
import 'package:caribbean_secrets_ecommerce/widgets/navigation_row.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          // NavigationBar(),
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
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
