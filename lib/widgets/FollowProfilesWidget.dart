import 'package:flutter/cupertino.dart';
import 'package:modaapp/widgets/ProfilesWidget.dart';

class FollowProfilesWidget extends StatelessWidget {
  const FollowProfilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 150,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10),
            ProfilesWidget(),
            SizedBox(width: 30),
            ProfilesWidget(),
            SizedBox(width: 30),
            ProfilesWidget(),
            SizedBox(width: 30),
            ProfilesWidget(),
            SizedBox(width: 30),
            ProfilesWidget(),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}
