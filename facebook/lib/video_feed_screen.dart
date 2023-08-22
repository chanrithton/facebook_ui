// ignore_for_file: unused_field

import 'package:facebook/Screens/models/video.data.dart';
import 'package:facebook/Screens/widgets/video_feed.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('images/videos/Memory 12A 2021.mp4')
          ..initialize().then((_) {
            _controller.play(); // play video
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Post.length, // call from post_data
              itemBuilder: (context, index) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: VideoFeed(
                      profileUrl: Post[index].profileUrl,
                      username: Post[index].username,
                      posttime: Post[index].posttime,
                      caption: Post[index].caption,
                      photoUrl: Post[index].photoUrl,
                      isVideo: true,
                      controller: _controller,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
