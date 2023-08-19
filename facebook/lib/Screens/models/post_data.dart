// ignore_for_file: non_constant_identifier_names

class PostData {
  // can throw insert
  final String ProfileUrl;
  final String Username;
  final String Posttime;
  final String Caption;
  final String PhotoUrl;

  // make Constructor
  PostData(
      {required this.ProfileUrl,
      required this.Username,
      required this.Posttime,
      required this.Caption,
      required this.PhotoUrl});
}

var posts = [
  PostData(
      ProfileUrl: "images/Rith.png",
      Username: "Ton Chanrith",
      Posttime: "5:00 PM",
      Caption: "Hometown is more beautiful place",
      PhotoUrl: "images/Rith.png"),
  PostData(
      ProfileUrl: "images/Rith.png",
      Username: "Ton Chanrith",
      Posttime: "5:00 PM",
      Caption: "Hometown is more beautiful place",
      PhotoUrl: "images/Ton Chanrith.png"),
];
