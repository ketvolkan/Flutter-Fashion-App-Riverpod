import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/follow_images.dart';

final imagesListProvider = Provider<List<FollowImages>>((ref) {
  List<FollowImages> images = const [
    FollowImages(
      id: 0,
      image: "assets/modelgrid1.jpeg",
      logo: "assets/louisvuitton.jpg",
    ),
    FollowImages(
      id: 1,
      image: "assets/modelgrid2.jpeg",
      logo: "assets/chloelogo.png",
    ),
    FollowImages(
      id: 2,
      image: "assets/modelgrid1.jpeg",
      logo: "assets/chanellogo.jpg",
    ),
    FollowImages(
        id: 3,
        image: "assets/modelgrid3.jpeg",
        logo: "assets/louisvuitton.jpg"),
    FollowImages(
      id: 4,
      image: "assets/modelgrid2.jpeg",
      logo: "assets/chloelogo.png",
    ),
    FollowImages(
      id: 5,
      image: "assets/modelgrid1.jpeg",
      logo: "assets/chanellogo.jpg",
    ),
    FollowImages(
      id: 6,
      image: "assets/modelgrid2.jpeg",
      logo: "assets/chloelogo.png",
    ),
    FollowImages(
      id: 7,
      image: "assets/modelgrid2.jpeg",
      logo: "assets/chanellogo.jpg",
    ),
    FollowImages(
      id: 8,
      image: "assets/modelgrid3.jpeg",
      logo: "assets/chloelogo.png",
    ),
    FollowImages(
      id: 9,
      image: "assets/modelgrid1.jpeg",
      logo: "assets/louisvuitton.jpg",
    ),
    FollowImages(
      id: 10,
      image: "assets/modelgrid3.jpeg",
      logo: "assets/chloelogo.png",
    ),
    FollowImages(
      id: 11,
      image: "assets/modelgrid3.jpeg",
      logo: "assets/chanellogo.jpg",
    ),
    FollowImages(
      id: 12,
      image: "assets/modelgrid1.jpeg",
      logo: "assets/chloelogo.png",
    ),
  ];
  return images;
});
final currentImageProvider = Provider<FollowImages>((ref) {
  throw UnimplementedError();
});
