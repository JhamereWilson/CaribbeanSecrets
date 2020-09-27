import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
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
              color: Colors.blue,
            ),
          ),
       Footer(),
        ],
      ),
    );
  }
}
