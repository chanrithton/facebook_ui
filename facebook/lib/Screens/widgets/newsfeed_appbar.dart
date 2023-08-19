// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:facebook/Screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewFeedApp extends StatelessWidget {
  const NewFeedApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      expandedHeight: 300, // clear scroll up and down
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    // click photo
                    child: TextButton(
                      onPressed: () {},
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/Rith.png',
                        ),
                      ),
                    )),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const Expanded(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.fromLTRB(10, 0, 0, 0), // editing box
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo,
                      color: Colors.green,
                    ))
              ],
            ),
            Container(
              height: 10,
              decoration: const BoxDecoration(color: KeySecondaryColor),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            // create story
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // can scroll
                itemCount: 6, // count story
                itemBuilder: (context, index) {
                  // create story in facebook
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 120,
                        height: 220,
                        child: Column(
                          children: [
                            // width and height image or photo
                            Container(
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(20),
                              //   color: Colors.grey.withOpacity(0.4)
                              // ),
                              height: 120,
                              width: 120,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Stack(
                                    //  alignment: Alignment.bottomCenter,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/Rith.png',
                                          width: 120,
                                          fit: BoxFit.cover,
                                          height: 120,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: -20,
                                    child: SizedBox(
                                      width: 120,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: KeyPrimaryColor,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Create Story",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Container(
                            child: Image.asset(
                              'images/Rith.png',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Positioned(
                              left: 10,
                              child: CircleAvatar(
                                radius: 22,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('images/Rith.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // add line
            Expanded(
              child: Container(
                height: 10,
                decoration: const BoxDecoration(color: KeySecondaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
