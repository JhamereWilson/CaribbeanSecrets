import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/routing/router.dart';
import 'package:caribbean_secrets_ecommerce/services/navigation_services.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) => Scaffold(
        drawer: sizingInfo.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            NavigationBar(),
            Container(
              height: MediaQuery.of(context).size.height,
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
