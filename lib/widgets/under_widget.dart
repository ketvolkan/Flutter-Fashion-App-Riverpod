import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnderWidget extends ConsumerWidget {
  const UnderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      left: 15,
      right: 15,
      bottom: 15,
      child: Material(
        child: Container(
          width: double.infinity,
          height: 200,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset("assets/dress.jpg"),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Laminante",
                                style: TextStyle(
                                  fontSize: 35,
                                )),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Text("Louis Vuitton",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                                Image.asset(
                                  "assets/louisvuitton.jpg",
                                  width: 15,
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                "Dress Louis Vutton Laminante Dress Vutton Louis Louis Vutton Laminante Dress Vutton Louis Vutton Laminante Dress Vutton",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "6000 ₺",
                      style: TextStyle(fontSize: 25),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.brown,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 20,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
