
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_button.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CenteredView(
        child: Column(
          children: [
            Text(
              "Caribbean Secrets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 60),
            Text(
              "The Deeper the Secret, the better the Beauty.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 100),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Enter your email.",
                hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontWeight: FontWeight.w200),
                fillColor: Colors.white,
                filled: true,
                hoverColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 100),
            SubscribeButton("Subscribe"),
            SizedBox(height: 100),
            Container(
              width: 300,
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
               
                  CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                  
                  CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}