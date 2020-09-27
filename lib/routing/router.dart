import 'package:caribbean_secrets_ecommerce/views/checkout/checkout_screen.dart';
import 'package:caribbean_secrets_ecommerce/views/about/about_view.dart';
import 'package:caribbean_secrets_ecommerce/views/blog/blog_view.dart';
import 'package:caribbean_secrets_ecommerce/views/cart/cart_view.dart';
import 'package:caribbean_secrets_ecommerce/views/product_detail/product_detail_screen.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episodes_detail_view.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/secrets_tv_view.dart';
import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:caribbean_secrets_ecommerce/widgets/layout_template/layout_template.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

// ignore: missing_return
Route<dynamic> generateRoute(RouteSettings settings) {
  // var routingData = settings.name.getRoutingData;
  switch (settings.name) {
    case LayoutRoute:
      return _getPageRoute(LayoutTemplate(), settings);
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case ShopRoute:
      return _getPageRoute(ShopView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case BlogRoute:
      return _getPageRoute(BlogView(), settings);
    case SecretsTVRoute:
      return _getPageRoute(SecretsTVView(), settings);
    case EpisodeDetailRoute:
      int data = settings.arguments;
      return _getPageRoute(
          EpisodeDetailView(
            productId: data,
          ),
          settings);
    case CartRoute:
      return _getPageRoute(CartView(), settings);
    case CheckoutRoute:
      return _getPageRoute(CheckoutScreen(), settings);
    case ProductDetailRoute:
      int data = settings.arguments;
      return _getPageRoute(
          ProductDetailView(
            productId: data,
          ),
          settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
