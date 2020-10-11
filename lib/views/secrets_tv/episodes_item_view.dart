import 'package:caribbean_secrets_ecommerce/models/episode_model.dart';
import 'package:caribbean_secrets_ecommerce/routing/route_names.dart';
import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EpisodeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final episode = Provider.of<EpisodeModel>(context, listen: false);
    final screen = ScreenDimensions(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed(EpisodeDetailRoute, arguments: episode.id),
            child: Container(
                margin: EdgeInsets.all(10),
                height: 600,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(
                      episode.coverImageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    episode.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                )),
          );
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed(EpisodeDetailRoute, arguments: episode.id),
            child: Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(
                      episode.coverImageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    episode.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                )),
          );
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamed(EpisodeDetailRoute, arguments: episode.id),
            child: Container(
                margin: EdgeInsets.all(10),
                height: screen.screenHeight * 0.1,
                width: screen.screenWidth * 0.2,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(
                      episode.coverImageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    episode.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                )),
          );
        }
        return Container();
      },
    );
  }
}
