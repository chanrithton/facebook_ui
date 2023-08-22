// ignore_for_file: non_constant_identifier_names

class VideoData {
  // can throw insert
  final String profileUrl;
  final String username;
  final String posttime;
  final String caption;
  final String photoUrl;

  // make Constructor
  VideoData(
      {required this.profileUrl,
      required this.username,
      required this.posttime,
      required this.caption,
      required this.photoUrl});
}

var Post = [
  VideoData(
      profileUrl: "images/Rith.png",
      username: "Ton Chanrith",
      posttime: "5:00 PM",
      caption: "Hello",
      photoUrl: "images/Rith.png"),
];
