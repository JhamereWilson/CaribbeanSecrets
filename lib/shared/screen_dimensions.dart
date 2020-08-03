import 'package:flutter/material.dart';

class ScreenDimensions {
  final BuildContext ctx;

  ScreenDimensions(this.ctx);
  
  get screenWidth{
    double width = MediaQuery.of(ctx).size.width;
    return width;
  }

  get screenHeight{
    double height = MediaQuery.of(ctx).size.height;
    return height;
  }


}
