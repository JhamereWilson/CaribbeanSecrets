import 'dart:html';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:caribbean_secrets_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class EpisodeDetailView extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final String videoUrl;

  const EpisodeDetailView(
      {Key key, this.id, this.title, this.description, this.videoUrl})
      : super(key: key);

  @override
  _EpisodeDetailViewState createState() => _EpisodeDetailViewState();
}

class _EpisodeDetailViewState extends State<EpisodeDetailView> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('/videos${widget.videoUrl}')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: VideoPlayer(_controller),
        ),
        Text(widget.title),
        Text(widget.description)
      ],
    );
  }
}
