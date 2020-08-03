import 'package:flutter/material.dart';

class HeroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.red[900],
      ),
      child: Text(
        "Deep Secrets...",
        style: TextStyle(
            color: Colors.white, fontSize: 120, fontWeight: FontWeight.w700),
        textAlign: TextAlign.left,
      ),
    );
  }
}
