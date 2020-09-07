
import 'package:caribbean_secrets_ecommerce/views/video_view.dart';
import 'package:flutter/material.dart';

import 'locator.dart';
import 'views/landing_page/single_page_purchase.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caribbean Secrets',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      // builder: (context, child) => LayoutTemplate(child: child),
      // key: locator<NavigationService>().navigatorKey,
      // onGenerateRoute: generateRoute, 
      // initialRoute: HomeRoute,
      home: SinglePurchaseLandingPage(),
    );
  }
}
