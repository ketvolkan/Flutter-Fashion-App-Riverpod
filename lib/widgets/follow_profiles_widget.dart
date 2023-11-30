import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/follow_images.dart';
import 'package:modaapp/providers/images_provider.dart';
import 'package:modaapp/widgets/profiles_widget.dart';

class FollowProfilesWidget extends ConsumerWidget {
  const FollowProfilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<FollowImages> _imagesPath = ref.watch(imagesListProvider);
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _imagesPath.length + 1,
        itemBuilder: (context, index) {
          return index == 0
              ? const SizedBox(height: 10)
              : ProviderScope(
                  overrides: [currentImageProvider.overrideWithValue(_imagesPath[index - 1])],
                  child: const ProfilesWidget(),
                );
        },
      ),
    );
  }
}
