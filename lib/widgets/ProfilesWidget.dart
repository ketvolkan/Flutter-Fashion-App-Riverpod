import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/providers/imagesProvider.dart';

class ProfilesWidget extends ConsumerWidget {
  const ProfilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String _currentImage = ref.watch(currentImageProvider);
    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.asset(
                _currentImage,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 30,
                color: Colors.brown,
                child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
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
        SizedBox(width: 30),
      ],
    );
  }
}
