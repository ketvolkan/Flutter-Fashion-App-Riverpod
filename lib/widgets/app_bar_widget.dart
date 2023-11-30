import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'Moda Uygulaması',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Icon(
                Icons.add_a_photo,
                color: Colors.grey,
                size: 29,
              )),
        ),
      ],
    );
  }
}
