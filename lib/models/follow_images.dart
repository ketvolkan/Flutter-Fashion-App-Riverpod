import 'package:flutter/cupertino.dart';

@immutable
class FollowImages {
  final int id;
  final String image;
  final String logo;

  const FollowImages({
    required this.id,
    required this.image,
    required this.logo,
  });
}
