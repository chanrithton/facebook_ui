// ignore_for_file: non_constant_identifier_names

import 'package:facebook/Screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PostFeed extends StatefulWidget {
  const PostFeed({
    super.key,
    required this.ProfileUrl,
    required this.Username,
    required this.Posttime,
    required this.Caption,
    required this.PhotoUrl, // can't required
  });
  // can throw insert
  final String ProfileUrl;
  final String Username;
  final String Posttime;
  final String Caption;
  final String PhotoUrl;
  @override
  State<PostFeed> createState() => _PostFeedState();
}

class _PostFeedState extends State<PostFeed> {
  // null labl
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
                    widget.ProfileUrl,
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
                      widget.Username,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text((widget.Posttime)),
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
          child: Text(widget.Caption),
        ),
        const SizedBox(
          height: 10,
        ),
        // put photo or video in post
        GestureDetector(
          // check video
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
                      imageProvider: AssetImage(widget.PhotoUrl),
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
            widget.PhotoUrl,
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
