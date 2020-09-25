import 'package:flutter/material.dart';

class CaribbeanSecretsColors {
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
}
