import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscription_view/subscription_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../animated_text.dart';

class SecretCollectionViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
    print(subscribe.isSubscribed);
    return AnimatedSwitcher(
        duration: Duration(seconds: 2),
        child: subscribe.isSubscribed
            ? Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Container(
                      height: 400,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Can you keep a secret?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900),
                            ),
                            FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Text("Shop",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    // flex: 2,
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("/images/CSWebsite-33.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              )
            : SubscriptionView());
  }
}
