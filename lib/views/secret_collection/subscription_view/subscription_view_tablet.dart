import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_button.dart';

import 'package:flutter/material.dart';

class SubscriptionViewTablet extends StatelessWidget {
  const SubscriptionViewTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("/images/CSwebsite-18.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25),
          Text(
            "Subscribe to Unlock the Secret Collection!",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 25),
          Expanded(child: SubscribeField()),
        ],
      ),
    );
  }
}
