// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:facebook/Screens/models/post_data.dart';
import 'package:flutter/material.dart';

import 'widgets/newsfeed_appbar.dart';
import 'widgets/post_feed.dart';

class NewFeedScreen extends StatelessWidget {
  const NewFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            // post newfeed
            const NewFeedApp(),
          ];
        },
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
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
