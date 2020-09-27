import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/routing/router.dart';
import 'package:caribbean_secrets_ecommerce/screens/checkout_screen.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_screen.dart';
import 'package:caribbean_secrets_ecommerce/services/navigation_services.dart';
import 'package:caribbean_secrets_ecommerce/views/home_view/home_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/layout_template/layout_template.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'locator.dart';
import 'screens/cart_screens/cart_screen.dart';


void main() {
setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(create: (ctx) => Cart()),
      ],
      child: MaterialApp(
        title: 'Caribbean Secrets',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        // ),
        builder: (context, child) => LayoutTemplate(child: child),
        key: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: HomeRoute,
 
      ),
    );
  }
}
