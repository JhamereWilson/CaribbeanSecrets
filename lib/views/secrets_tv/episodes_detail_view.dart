import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EpisodeDetailView extends StatelessWidget {
  final productId;

  const EpisodeDetailView({Key key, this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
     
      CenteredView(
        child: Container(
          width: ScreenDimensions(context).screenWidth,
          height: ScreenDimensions(context).screenHeight,
          color: Colors.purple,
        ),
      ),
    ]);
  }
}
