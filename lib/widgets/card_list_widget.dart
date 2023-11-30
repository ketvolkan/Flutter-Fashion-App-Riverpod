import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/post.dart';
import 'package:modaapp/providers/posts_provider.dart';
import 'package:modaapp/widgets/card_widget.dart';
import 'package:modaapp/widgets/follow_profiles_widget.dart';

class CardListWidget extends ConsumerWidget {
  const CardListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Post> _posts = ref.watch(postListProvider);
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: _posts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const FollowProfilesWidget();
                } else if (index == 1) {
                  return const SizedBox(height: 10);
                } else {
                  return ProviderScope(
                    overrides: [currentPostProvider.overrideWithValue(_posts[index - 2])],
                    child: const CardWidget(),
                  );
                }
              }),
        ),
      ],
    );
  }
}
