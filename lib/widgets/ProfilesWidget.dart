import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilesWidget extends StatelessWidget {
  const ProfilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Image.asset(
            "assets/model1.jpeg",
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
    );
  }
}
