import 'package:caribbean_secrets_ecommerce/widgets/video_player/video_player_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'video_player_mobile.dart';

class VideoPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: VideoPlayerMobile(),
      desktop: VideoPlayerDesktop(),
    );
  }
}
