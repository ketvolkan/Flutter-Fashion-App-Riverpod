import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/Post.dart';
import 'package:modaapp/providers/postsProvider.dart';
import 'package:modaapp/widgets/CardWidget.dart';
import 'package:modaapp/widgets/FollowProfilesWidget.dart';

class CardListWidget extends ConsumerWidget {
  const CardListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Post> _posts = ref.watch(postListProvider);
    return Column(
      children: [
        SizedBox(
          height: 520,
          child: ListView.builder(
              itemCount: _posts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return FollowProfilesWidget();
                } else if (index == 1) {
                  return SizedBox(
                    height: 10,
                  );
                } else {
                  return ProviderScope(
                    overrides: [
                      currentPostProvider.overrideWithValue(_posts[index - 2]),
                    ],
                    child: CardWidget(),
                  );
                }
              }),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
