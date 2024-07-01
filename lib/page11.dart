import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tasks5/page10.dart';

class Page11 extends StatefulWidget {
  const Page11({super.key});

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  List<String> images = [
    "images/149.jpeg",
    "images/149.jpeg",
    "images/149.jpeg",
    "images/149.jpeg",
    "images/149.jpeg"
  ];
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
                  'Requested Buisiness',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          const Center(
            child: Text(
              "Elegent Watches",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: Container(
              color: Colors.white,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              border: Border.all()));
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 8,
                        ),
                    itemCount: 4),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Key Features",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Container(
                  height: 100,
                  width: 340,
                  decoration: BoxDecoration(boxShadow: const [
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
                  ], color: Colors.white, border: Border.all()),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "These watches have smaller diameter dials compared to standered watches,typically ranging from around 28mm to 36mm in diameter"),
                  ))),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Small Description",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Container(
                  height: 220,
                  width: 340,
                  decoration: BoxDecoration(boxShadow: const [
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
                  ], color: Colors.white, border: Border.all()),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                            "Join our reseller program and earn generous commisions on every sale of our premium watches! As a valued partner, you'll recieve a competitive commision rate for each watch sold within your designated territory. Our straightforward commission structure ensure you're fairly rewarded for your efforts in promoting and selling our high quality timepie"),
                        Text(
                          "30% commission provided",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ))),
                  SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Accept",
                  style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Reject",
                  style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.red),
              )
            ],
          )
        ]),
      )),
    );
  }
}
