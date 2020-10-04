import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:flutter/material.dart';

class HoverableNavigationButton extends StatefulWidget {
  HoverableNavigationButton(
      {Key key,
      @required this.text,
      @required this.color,
      @required this.fontSize,
      @required this.routeName,
      @required this.hoverColor,
      @required this.fontWeight})
      : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final Color hoverColor;
  final String routeName;
  final FontWeight fontWeight;

  @override
  _HoverableNavigationButtonState createState() =>
      _HoverableNavigationButtonState();
}

class _HoverableNavigationButtonState extends State<HoverableNavigationButton> {
  bool buttonHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(HomeRoute),
      onHover: (value) {
        if (value) {
          setState(() {
            buttonHovering = true;
          });
        } else {
          setState(() {
            buttonHovering = false;
          });
        }
      },
      child: Text(
        widget.text,
        style: TextStyle(
            color: buttonHovering ? widget.hoverColor : widget.color,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight),
      ),
    );
  }
}
