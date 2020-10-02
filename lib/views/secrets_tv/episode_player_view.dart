import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

class EpisodePlayerView extends StatelessWidget {
  final num height;
  final num width;
  final String url;
  final String title;
  const EpisodePlayerView(
      {Key key, this.height, this.width, this.url, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Center(
        child: EasyWebView(
          src: embedUrl,
          onLoaded: () => print("view loaded"),
          height: height - 2,
          width: width - 2,
          isHtml: true, // Use Html syntax
          isMarkdown: false, // Use markdown syntax
          convertToWidgets: false,
        ),
      ),
    );
  }

  String get embedUrl =>
      """<iframe width=$width height=$height src=$url frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>""";
}
