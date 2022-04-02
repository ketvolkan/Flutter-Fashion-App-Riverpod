import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/post.dart';

final postListProvider = Provider<List<Post>>((ref) {
  List<Post> images = const [
    Post(
        id: 0,
        username: "Merve",
        comment:
            "it has survivod not onliy five centuriew,but also eas wda dcacca issddw dcacaas, ada ca.",
        time: "16 Minutes Ago",
        photoUrl: "assets/model1.jpeg"),
    Post(
        id: 1,
        username: "Merve Nur",
        comment:
            "asde saddw acase hase not onliy five centuriew,but also eas wda dcacca issddw dcacaas, ada ca.",
        time: "26 Minutes Ago",
        photoUrl: "assets/model2.jpeg"),
    Post(
        id: 2,
        username: "Merve Can",
        comment:
            "awada dddadswgas dadwd not onliy five centuriew,but also eas wda dcacca issddw dcacaas, ada ca.",
        time: "126 Minutes Ago",
        photoUrl: "assets/model3.jpeg"),
    Post(
        id: 3,
        username: "Merve Su",
        comment:
            "asddw sadj yw ıurdhuw jduwa sdy five centuriew,but also eas wda dcacca issddw dcacaas, ada ca.",
        time: "216 Minutes Ago",
        photoUrl: "assets/model2.jpeg")
  ];
  return images;
});
final currentPostProvider = Provider<Post>((ref) {
  throw UnimplementedError();
});
final clickedPostProvider = Provider<Post>((ref) {
  throw UnimplementedError();
});
