import 'package:flutter/material.dart';
import 'package:modaapp/widgets/app_bar_widget.dart';
import 'package:modaapp/widgets/bottom_app_bar_widget.dart';
import 'package:modaapp/widgets/card_list_widget.dart';

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
        title: const AppBarWidget(),
      ),
      body: Column(
        children: const <Widget>[
          SizedBox(
            height: 5,
          ),
          CardListWidget(),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        child: BottomAppBarWidget(),
      ),
    );
  }
}
