import 'package:flutter/material.dart';

import '../widgets.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const DrawerItem(
      {@required this.title,
      @required this.icon,
      @required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 30),
          NavBarItem(title: title, navigationPath: navigationPath),
        ],
      ),
    );
  }
}
