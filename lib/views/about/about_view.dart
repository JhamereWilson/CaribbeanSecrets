import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/centered_view/centered_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/footer/footer.dart';
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
            child: Container(
              width: ScreenDimensions(context).screenWidth,
              height: ScreenDimensions(context).screenHeight,
              color: Colors.red,
            ),
          ),
         
        ],
      ),
    );
  }
}
