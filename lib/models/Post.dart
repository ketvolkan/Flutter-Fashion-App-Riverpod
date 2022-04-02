import 'package:flutter/cupertino.dart';

@immutable
class Post {
  final int id;
  final String username;
  final String comment;
  final String time;
  final String photoUrl;

  const Post(
      {required this.id,
      required this.username,
      required this.comment,
      required this.time,
      required this.photoUrl});
}
