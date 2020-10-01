import 'package:caribbean_secrets_ecommerce/widgets/animated_text/animated_desk_mobile.dart';
import 'package:caribbean_secrets_ecommerce/widgets/animated_text/animated_text_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AnimatedTextMobile(fontSize: 55),
      desktop: AnimatedTextDesktop(fontSize: 120),
    );
  }
}
