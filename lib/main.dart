import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

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

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 395,
        margin: EdgeInsets.only(right: 10, left: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(
                  "assets/model1.jpeg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "Merve",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                "16 minutes ago",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                children: [
                  Text(
                    "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/modelgrid1.jpeg",
                          fit: BoxFit.fitWidth,
                          width: 180,
                          height: 200,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "assets/modelgrid2.jpeg",
                              fit: BoxFit.fitWidth,
                              width: 150,
                              height: 95,
                            ),
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "assets/modelgrid3.jpeg",
                              fit: BoxFit.fitWidth,
                              width: 150,
                              height: 95,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color.fromARGB(251, 226, 226, 226),
                      height: 33,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 20, right: 20),
                          child: Text(
                            "Louis vutton",
                            style: TextStyle(
                              color: Color.fromARGB(250, 167, 167, 167),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color.fromARGB(251, 226, 226, 226),
                      height: 33,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 20, right: 20),
                          child: Text(
                            "Chloe",
                            style: TextStyle(
                              color: Color.fromARGB(250, 167, 167, 167),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'Moda Uygulaması',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
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
