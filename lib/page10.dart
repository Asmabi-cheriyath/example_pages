import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Page10 extends StatefulWidget {
  const Page10({super.key});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  List<String> details = ["abcd@gmail.com", "9992345345", "Elegent Watches"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpeg'), fit: BoxFit.cover),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Accounts',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          const SizedBox(
            height: 40,
          ),
          const Center(
              child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
              "images/149.jpeg",
            ),
          )),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 3.0,
                              spreadRadius: 0.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0),
                        ],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Center(child: Text(details[index])),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 25,
                ),
                itemCount: 3,
              ),
            ),
          )
        ]),
      )),
    );
  }
}
