
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({@required this.child});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) => Scaffold(
        drawer: sizingInfo.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            NavigationBar(),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: child,
                // child: Navigator(
                //   key: locator<NavigationService>().navigatorKey,
                //   onGenerateRoute: generateRoute,
                //   initialRoute: HomeRoute,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
