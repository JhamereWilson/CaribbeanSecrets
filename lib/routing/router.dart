



import 'package:caribbean_secrets_ecommerce/views/views.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

// ignore: missing_return
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case ShopRoute:
      return _getPageRoute(ShopView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case BlogRoute:
      return _getPageRoute(BlogView());
      case CommunityRoute:
      return _getPageRoute(CommunityView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}


// class _FadeRoute extends PageRouteBuilder {
//   final Widget child;
//   final String routeName;
//   _FadeRoute({this.child, this.routeName})
//       : super(
//           settings: RouteSettings(name: routeName),
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               child,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: child,
//           ),
//         );
// }
