import 'dart:async';
import 'dart:math';

import 'package:caribbean_secrets_ecommerce/shared/caribbean_secrets_colors.dart';
import 'package:flutter/material.dart';

class BlinkingText extends StatefulWidget {
  final double fontSize;
  final String text;
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;
  final Color color1;
  final Color color2;
  final Duration duration;

  const BlinkingText(
      {@required this.fontSize,
      @required this.text,
      @required this.fontWeight1,
      this.fontWeight2,
      @required this.duration,
      this.color1,
      this.color2});
  @override
  _BlinkingTextState createState() => _BlinkingTextState();
}

class _BlinkingTextState extends State<BlinkingText> {
  bool isBold = true;
  final random = Random();
  Timer _clockTimer;

  @override
  void initState() {
    super.initState();

    // defines a timer
    _clockTimer = Timer.periodic(widget.duration, (Timer t) {
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
              color: widget.color1,
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight1)
          : TextStyle(
              fontSize: widget.fontSize,
              color: widget.color2,
              fontWeight: widget.fontWeight2),
      duration: const Duration(milliseconds: 1500),
      child: Text(widget.text),
    );
  }
}
