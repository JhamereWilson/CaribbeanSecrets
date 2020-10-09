import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key key,
    @required this.child,
    @required this.value,
    @required this.fontSize, @required this.topPosition,
  }) : super(key: key);

  final Widget child;
  final String value;
  final num fontSize;
  final num topPosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          top: topPosition,
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: fontSize, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
