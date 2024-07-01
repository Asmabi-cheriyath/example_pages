import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
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
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Business Post',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.amberAccent,
                    ),
                    Text("  Name:Gadgets")
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text("   Verified Phone Number:",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 15,),
              const Center(
                child: SizedBox(
                  width: 330,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 65,),
              Center(
                  child: Container(
                height: 30,
                width: 120,
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
                          ],
                    color: const Color.fromARGB(255, 2, 124, 65),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Post",
                  style: TextStyle(color: Colors.white),
                )),
              )),
            ]),
      )),
    );
  }
}
