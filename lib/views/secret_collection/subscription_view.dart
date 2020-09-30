import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_button.dart';

import 'package:flutter/material.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("/images/CSwebsite-18.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            "Subscribe to Unlock the Secret Collection!",
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 50),
          Expanded(child: SubscribeField()),
        ],
      ),
    );
  }
}
