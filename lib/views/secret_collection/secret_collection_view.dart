import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/secret_collection/secret_colection_view_mobile.dart';
import 'package:caribbean_secrets_ecommerce/widgets/subscribe_field/subscribe_field.dart';
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../animated_text.dart';
import 'secret_collection_view_desktop.dart';
import 'secret_collection_view_tablet.dart';
import 'subscription_view/subscription_view.dart';

class SecretCollectionView extends StatelessWidget {
  bool glowing = false;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SecretCollectionViewMobile(),
      tablet: SecretCollectionViewTablet(),
      desktop: SecretCollectionViewDesktop(),
    );
  }
}
