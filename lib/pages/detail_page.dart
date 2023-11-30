import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/widgets/app_bar_widget.dart';

import 'package:modaapp/widgets/background_container_widget.dart';
import 'package:modaapp/widgets/under_widget.dart';

class DetailPage extends ConsumerStatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: const Stack(children: [BackgroundWidgetContainer(), UnderWidget()]),
    );
  }
}
