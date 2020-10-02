import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episodes_detail_screen/episode_detail_screen_desktop.dart';
import 'package:caribbean_secrets_ecommerce/views/secrets_tv/episodes_detail_screen/episode_detail_screen_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EpisodeDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: EpisodeDetailScreenMobile(),
      desktop: EpisodeDetailScreenDesktop(),
    );
  }
}
