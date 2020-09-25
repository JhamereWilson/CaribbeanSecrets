import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/services/navigation_services.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class LogoView extends StatelessWidget {
  final double height;
  final double width;

  const LogoView({@required this.height, @required this.width});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      // onPressed: () => locator<NavigationService>().navigateTo(HomeRoute),
      child: Container(
        height: height,
        width: width,
        child: Image.asset('/images/cs_transparent_logo.png'),
      ),
    );
  }
}
