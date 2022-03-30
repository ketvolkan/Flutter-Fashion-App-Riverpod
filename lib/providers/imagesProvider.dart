import 'package:flutter_riverpod/flutter_riverpod.dart';

final imagesListProvider = Provider<List<String>>((ref) {
  List<String> images = [
    "assets/model1.jpeg",
    "assets/model2.jpeg",
    "assets/model3.jpeg",
    "assets/model3.jpeg",
    "assets/model1.jpeg",
    "assets/model2.jpeg",
    "assets/model1.jpeg",
    "assets/model3.jpeg",
    "assets/model1.jpeg"
  ];
  return images;
});
final currentImageProvider = Provider<String>((ref) {
  throw UnimplementedError();
});
