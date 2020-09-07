import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

// ignore: missing_return
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case ShopRoute:
      return _getPageRoute(ShopView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case BlogRoute:
      return _getPageRoute(BlogView(), settings);
    case CommunityRoute:
      return _getPageRoute(CommunityView(), settings);
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
