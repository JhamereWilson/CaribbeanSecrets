
import 'package:caribbean_secrets_ecommerce/views/secret_collection/subscription_view/subscription_view_tablet.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'subscription_view_desktop.dart';
import 'subscription_view_mobile.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SubscriptionViewMobile(),
      tablet: SubscriptionViewTablet(),
      desktop: SubscriptionViewDesktop(),
    );
  }
}
