import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'subscription_view/subscription_view.dart';

class SecretCollectionViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final subscribe = Provider.of<Subscription>(context);
    return AnimatedSwitcher(
        duration: Duration(seconds: 2),
        child: (subscribe.isSubscribed == true)
            ? Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Container(
                      height: 800,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Can you keep a secret?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 56,
                                  fontWeight: FontWeight.w900),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.of(context).pushNamed(CollectionRoute),
                              color: Colors.white,
                              child: Text("Shop",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 56,
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
                      height: 800,
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
