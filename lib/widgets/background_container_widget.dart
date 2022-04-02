import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/providers/clicked_providers.dart';

class BackgroundWidgetContainer extends ConsumerWidget {
  const BackgroundWidgetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _clickedImage = ref.watch(clickedProviders);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(_clickedImage))),
    );
  }
}
