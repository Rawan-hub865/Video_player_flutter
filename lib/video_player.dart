import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayer();
}

class _MyVideoPlayer extends State<MyVideoPlayer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("assets/videos/vid.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Video Player"),
        centerTitle: true,
      ),
      body: Center(
          child: AspectRatio(
        aspectRatio: 6 / 9,
        child: FlickVideoPlayer(
          flickManager: flickManager,
        ),
      )),
    );
  }
}
