import 'package:caribbean_secrets_ecommerce/widgets/hoverable_navigation_button.dart';
import 'package:flutter/material.dart';

class NavigationRow extends StatelessWidget {
  const NavigationRow({Key key, @required this.currentPage}) : super(key: key);

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HoverableNavigationButton(
              text: "Home",
              color: Colors.white,
              fontSize: 18,
              routeName: "",
              hoverColor: Colors.red,
              fontWeight: FontWeight.w100,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 12,
            ),
            SizedBox(width: 5),
            Text(
              currentPage,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
