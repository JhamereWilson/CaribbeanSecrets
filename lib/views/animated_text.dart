import 'dart:async';
import 'dart:math';

import 'package:caribbean_secrets_ecommerce/shared/caribbean_secrets_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class AnimatedText extends StatefulWidget {
  final double fontSize;

  const AnimatedText({@required this.fontSize});
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
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
      child: Text(
        "THE \nSECRET \nCOLLECTION \nIS \nHERE.",
      ),
    );
  }
}

class GlowingText extends StatefulWidget {
  @override
  _GlowingTextState createState() => _GlowingTextState();
}

class _GlowingTextState extends State<GlowingText> {
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
    return AnimatedCrossFade(
      duration: const Duration(seconds: 1),
      firstChild: const Text(
        "Learn More",
        style: TextStyle(
            fontSize: 72, fontWeight: FontWeight.w900, color: Colors.white),
      ),
      secondChild: const GlowText(
        "Learn More",
        style: TextStyle(
            fontSize: 72, fontWeight: FontWeight.w900, color: Colors.white),
      ),
      crossFadeState:
          isBold ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
