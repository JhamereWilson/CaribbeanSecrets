import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key key,
    @required this.child,
    @required this.value,
  }) : super(key: key);

  final Widget child;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          top: 12,
                  child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
