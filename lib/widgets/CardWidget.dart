import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/Post.dart';
import 'package:modaapp/providers/postsProvider.dart';

class CardWidget extends ConsumerWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Post _currentPost = ref.watch(currentPostProvider);
    return Column(
      children: [
        Center(
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
                      _currentPost.photoUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    _currentPost.username,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    _currentPost.time,
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
                        _currentPost.comment,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/modelgrid1.jpeg",
                                fit: BoxFit.fitWidth,
                                width: 180,
                                height: 200,
                              ),
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
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
