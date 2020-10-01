import 'dart:math';

import 'package:flutter/material.dart';

class CaribbeanSecretsColors {
  final _random = new Random();
  static final List<Color> colors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
    Colors.deepPurple
  ];

  get gradient {
    return LinearGradient(colors: colors);
  }

  get randomColor {
    Color randomColor = colors[_random.nextInt(colors.length)];
    return randomColor;
  }
}
