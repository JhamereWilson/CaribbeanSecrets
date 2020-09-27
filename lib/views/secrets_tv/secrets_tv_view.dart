import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SecretsTVView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          
          CenteredView(
            child: Container(
              width: ScreenDimensions(context).screenWidth,
              height: ScreenDimensions(context).screenHeight,
              color: Colors.yellow[600],
              child: Center(child: Text("Secrets TV Is On The Way!", style: TextStyle(color: Colors.black, fontSize: 90, fontWeight: FontWeight.w900),)),
              //TODO: Create a List of Stacked Elements with Random (-100 through 100) positon
            ),
          ),
        ],
      ),
    );
  }
}
