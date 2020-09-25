// import 'package:flutter/material.dart';

// class GradientText extends StatelessWidget {
//   final String text;
//   final double fontSize;
//   final FontWeight fontWeight;
//   final Gradient gradient;
//   // final Shader linearGradient = LinearGradient(
//   //   colors: [
//   //     Colors.red,
//   //     Colors.orange,
//   //     Colors.yellow,
//   //     Colors.green,
//   //     Colors.teal,
//   //     Colors.blue,
//   //     Colors.purple,
//   //     Colors.deepPurple
//   //   ],
//   // ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

//   GradientText(
//       {@required this.text,
//       @required this.fontSize,
//       @required this.fontWeight,
//       @required this.gradient});

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (bounds) => gradient.createShader(
//         Rect.fromLTWH(0, 0, bounds.width, bounds.height),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: fontSize,
//           fontWeight: fontWeight,
//         ),
//       ),
//     );
//   }
// }
