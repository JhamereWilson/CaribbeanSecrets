import 'dart:async';
import 'dart:math';

import 'package:caribbean_secrets_ecommerce/shared/caribbean_secrets_colors.dart';
import 'package:flutter/material.dart';

class AnimatedTextMobile extends StatefulWidget {
  final double fontSize;

  const AnimatedTextMobile({@required this.fontSize});
  @override
  _AnimatedTextMobileState createState() => _AnimatedTextMobileState();
}

class _AnimatedTextMobileState extends State<AnimatedTextMobile> {
  bool isBold = true;
  final random = Random();
  Timer _clockTimer;

  @override
  void initState() {
    super.initState();

    // defines a timer
    _clockTimer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        isBold ? isBold = false : isBold = true;
      });
    });
  }

  @override
  void dispose() {
    _clockTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      style: isBold
          ? TextStyle(
              color: CaribbeanSecretsColors
                  .colors[random.nextInt(CaribbeanSecretsColors.colors.length)],
              fontSize: widget.fontSize,
              fontWeight: FontWeight.w900)
          : TextStyle(
              fontSize: widget.fontSize,
              color: Colors.white38,
              fontWeight: FontWeight.w800),
      duration: const Duration(milliseconds: 1500),
      child: Column(
        children: [
          Text("THE"),
          Text("SECRET"),
          Text("COLLECTION"),
          Text("IS"),
          Text("HERE."),
        ],
      ),
    );
  }
}
