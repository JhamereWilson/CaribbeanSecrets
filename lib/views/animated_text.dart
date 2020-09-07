import 'dart:async';
import 'dart:math';

import 'package:caribbean_secrets_ecommerce/shared/caribbean_secrets_colors.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  bool isBold = true;
  final random = Random();

  @override
  void initState() {
    super.initState();

    // defines a timer
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        isBold ? isBold = false : isBold = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      style: isBold
          ? TextStyle(
              color: CaribbeanSecretsColors
                  .colors[random.nextInt(CaribbeanSecretsColors.colors.length)],
              fontSize: 140,
              fontWeight: FontWeight.w900)
          : TextStyle(
              fontSize: 140,
              color: Colors.white38,
              fontWeight: FontWeight.w800),
      duration: const Duration(milliseconds: 1500),
      child: Text(
        "THE \nSECRET \nCOLLECTION \nIS \nHERE.",
      ),
    );
  }
}
