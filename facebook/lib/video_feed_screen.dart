// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import 'Screens/models/post_data.dart';
import 'Screens/widgets/post_feed.dart';
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
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        //  _controller.play(); // play video
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
              itemCount: posts.length, // call from post_data
              itemBuilder: (context, index) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: PostFeed(
                      ProfileUrl: posts[index].ProfileUrl,
                      Username: posts[index].Username,
                      Posttime: posts[index].Posttime,
                      Caption: posts[index].Caption,
                      PhotoUrl: posts[index].PhotoUrl,
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
