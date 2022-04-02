import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modaapp/models/post.dart';

import 'package:modaapp/providers/posts_provider.dart';

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
            height: 420,
            margin: const EdgeInsets.only(right: 10, left: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
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
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    _currentPost.time,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: const Icon(
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
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/Detail",
                                  arguments: "assets/modelgrid1.jpeg");
                            },
                            child: Expanded(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/Detail",
                                        arguments: "assets/modelgrid2.jpeg");
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/modelgrid2.jpeg",
                                      fit: BoxFit.fitWidth,
                                      width: 150,
                                      height: 95,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/Detail",
                                        arguments: "assets/modelgrid3.jpeg");
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/modelgrid3.jpeg",
                                      fit: BoxFit.fitWidth,
                                      width: 150,
                                      height: 95,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: const Color.fromARGB(251, 226, 226, 226),
                          height: 33,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(
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
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: const Color.fromARGB(251, 226, 226, 226),
                          height: 33,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(
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
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.reply,
                        color: Colors.brown.withOpacity(0.2),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "16k",
                        style:
                            TextStyle(fontFamily: "Montserrat", fontSize: 16),
                      ),
                      const SizedBox(
                        width: 26,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.brown.withOpacity(0.2),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "216",
                        style:
                            TextStyle(fontFamily: "Montserrat", fontSize: 16),
                      ),
                      const SizedBox(
                        width: 26,
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "26k",
                        style:
                            TextStyle(fontFamily: "Montserrat", fontSize: 16),
                      ),
                      const SizedBox(
                        width: 26,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
