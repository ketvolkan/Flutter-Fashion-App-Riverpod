import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.local_play_rounded,
            color: Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_box_rounded,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
