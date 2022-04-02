import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/follow_images.dart';
import 'package:modaapp/providers/images_provider.dart';

class ProfilesWidget extends ConsumerWidget {
  const ProfilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FollowImages _currentImage = ref.watch(currentImageProvider);
    return Row(
      children: [
        Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.asset(
                    _currentImage.image,
                    width: 75,
                    height: 75,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 60,
                  child: Image.asset(
                    _currentImage.logo,
                    width: 15,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 30,
                color: Colors.brown,
                child: TextButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}
