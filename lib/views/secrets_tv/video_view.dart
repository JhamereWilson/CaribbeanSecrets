import 'dart:async';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  @override
  _VideoPlayerViewState createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView>
    with AutomaticKeepAliveClientMixin {
  VideoPlayerController _vController;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _vController = VideoPlayerController.asset('videos/loyal.MP4');
    _initializeVideoPlayerFuture = _vController.initialize();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // mutes the video
      _vController.setVolume(0);
      // Plays the video once the widget is build and loaded.
      _vController.play();
    });

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _vController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screen = ScreenDimensions(context);

    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return VideoPlayer(_vController);
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(child: CircularProgressIndicator());
        }
      },

      // aspectRatio: _vController.value.aspectRatio,
      // Use the VideoPlayer widget to display the video.
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
