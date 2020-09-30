import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player2.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player3.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_player4.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/video_view.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SecretsTVView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          CenteredView(
            child: Container(
              width: ScreenDimensions(context).screenWidth,
              height: ScreenDimensions(context).screenHeight,
              color: Colors.yellow,
              child: Center(
                  child: Text(
                "Secrets TV Is On The Way!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 90,
                    fontWeight: FontWeight.w900),
              )),
              // child: Stack(
              //   children: [
              //     VideoPlayerView(),
              //     Positioned(left: 20, child: VideoPlayer4()),
              //     Positioned(right: 20, child: VideoPlayer3()),
              //     Positioned(bottom: 20, child: VideoPlayer2()),
              //     Positioned(top: 20, child: VideoPlayerView()),
              //   ],
              // ),
              //TODO: Create a List of Stacked Elements with Random (-100 through 100) positon
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
