import 'package:caribbean_secrets_ecommerce/providers/cart.dart';
import 'package:caribbean_secrets_ecommerce/providers/episodes.dart';
import 'package:caribbean_secrets_ecommerce/providers/products.dart';
import 'package:caribbean_secrets_ecommerce/providers/subscription.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/views/about/about_view.dart';
import 'package:caribbean_secrets_ecommerce/views/blog/blog_article_view.dart';
import 'package:caribbean_secrets_ecommerce/views/blog/blog_view.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view.dart';
import 'package:caribbean_secrets_ecommerce/views/checkout/checkout_screen.dart';
import 'package:caribbean_secrets_ecommerce/views/home_view/home_view.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_screen.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episodes_detail_view.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/secrets_tv_view.dart';
import 'package:caribbean_secrets_ecommerce/views/shop_view/shop_screen/shop_view.dart';
import 'package:caribbean_secrets_ecommerce/views/splash_view.dart';

import 'package:caribbean_secrets_ecommerce/widgets/layout_template/layout_template.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'locator.dart';

void main() {
  // setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products()),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Subscription()),
        ChangeNotifierProvider(create: (ctx) => Episodes())
      ],
      child: MaterialApp(
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
        initialRoute: HomeRoute,
        routes: {
          HomeRoute: (context) => HomeView(),
          ShopRoute: (context) => ShopView(),
          BlogRoute: (context) => BlogView(),
          AboutRoute: (context) => AboutView(),
          CheckoutRoute: (context) => CheckoutScreen(),
          CartRoute: (context) => CartView(),
          ProductDetailRoute: (context) => ProductDetailView(),
          SecretsTVRoute: (context) => SecretsTVView(),
          EpisodeDetailRoute: (context) => EpisodeDetailView(),
          BlogDetailRoute: (context) => BlogArticleView(),
        },
      ),
    );
  }
}
