import 'package:caribbean_secrets_ecommerce/views/secrets_tv/secrets_tv_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'secrets_tv_screen_mobile.dart';

class SecretsTVScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SecretsTVScreenMobile(),
      desktop: SecretsTVScreenDesktop(),
    );
   
  }
}