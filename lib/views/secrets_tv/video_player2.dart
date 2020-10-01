import 'dart:async';

import 'package:caribbean_secrets_ecommerce/shared/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer2 extends StatefulWidget {
  const VideoPlayer2({
    Key key,
  }) : super(key: key);
  @override
  _VideoPlayer2State createState() => _VideoPlayer2State();
}

class _VideoPlayer2State extends State<VideoPlayer2>
    with AutomaticKeepAliveClientMixin {
  VideoPlayerController _vController2;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _vController2 = VideoPlayerController.asset('videos/the_brothers.mov');
    _initializeVideoPlayerFuture = _vController2.initialize();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // mutes the video
      _vController2.setVolume(1.0);
      // Plays the video once the widget is build and loaded.
      _vController2.play();
    });

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _vController2.dispose();
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
          return VideoPlayer(_vController2);
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
