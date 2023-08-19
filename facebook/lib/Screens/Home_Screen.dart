// ignore_for_file: file_names, unused_local_variable, dead_code, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:facebook/Screens/constant.dart';
import 'package:facebook/Screens/new_feed_screen.dart';
import 'package:facebook/menu_screen.dart';
import 'package:facebook/video_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';

import '../notification_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // tab
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Facebook",
            style:
                TextStyle(color: KeyPrimaryColor, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: KeyAppBarColor,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: KeyBackColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: KeyAppBarColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
                      color: KeyBackColor,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          // like tab
          bottom: const TabBar(
            labelColor: KeyPrimaryColor, //<-- selected text color
            unselectedLabelColor: Colors.grey, //<-- Unselected text
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  //   color: KeyPrimaryColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video,
                  //  color: KeyPrimaryColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.people,
                  //  color: KeyPrimaryColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications,
                  //   color: KeyPrimaryColor,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu,
                  //  color: KeyPrimaryColor,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //new feed
            const NewFeedScreen(), // new feed screen
            const VideoScreen(), // video screen
            Container(
              child: const Text("Graup"),
            ),
            const NotificationScreen(), // notification screen
            const MenuScreen(), // Menu Screen
          ],
        ),
      ),
    );
  }
}

class PostFeed extends StatelessWidget {
  const PostFeed({
    super.key,
    required this.ProfileUrl,
    required this.Username,
    required this.Posttime,
    required this.Caption,
    required this.PhotoUrl,
  });
  // can throw insert
  final String ProfileUrl;
  final String Username;
  final String Posttime;
  final String Caption;
  final String PhotoUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundImage: AssetImage(
                    ProfileUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // add photo post like or commit share
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      Username,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text((Posttime)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.public,
                          size: 25,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              // icon more_horiz delete, editing
              IconButton(
                  onPressed: () {
                    debugPrint("New feed");
                  },
                  icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ),
        // add post
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(Caption),
        ),
        const SizedBox(
          height: 10,
        ),
        // put photo or video in post
        GestureDetector(
          // can view_photo
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    // close photo
                    Stack(
                  children: [
                    PhotoView(
                      imageProvider: AssetImage(PhotoUrl),
                    ),
                    SafeArea(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Image.asset(
            PhotoUrl,
            fit: BoxFit.cover,
            //    height: 250,
            width: double.infinity,
          ),
        ),
        // input emoji
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: const [
              Text(
                '👍',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                '❤️',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                '😅',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '105 others',
                style: TextStyle(color: KeyTextColor),
              ),
              // throw spacer
              Spacer(),
              Text(
                "18 comments",
                style: TextStyle(color: KeyTextColor),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text("like"),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.comment_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("comment"),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.share_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("share"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
