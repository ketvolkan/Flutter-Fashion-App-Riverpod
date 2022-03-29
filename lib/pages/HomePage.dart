import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modaapp/main.dart';
import 'package:modaapp/widgets/AppBarWidget.dart';
import 'package:modaapp/widgets/BottomAppBarWidget.dart';
import 'package:modaapp/widgets/CardWidget.dart';
import 'package:modaapp/widgets/FollowProfilesWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            FollowProfilesWidget(),
            CardWidget(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomAppBarWidget(),
      ),
    );
  }
}
