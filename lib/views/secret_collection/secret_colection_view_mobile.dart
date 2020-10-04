import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';

import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscription_view/subscription_view.dart';

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
        child: (subscribe.isSubscribed == true)
            ? Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Container(
                      height: 200,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Can you keep a secret?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(CollectionRoute),
                              color: Colors.white,
                              child: Text("Learn More",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
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
                      height: 200,
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
