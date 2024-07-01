import 'package:flutter/material.dart';
import 'package:flutter_tasks5/page1.dart';
import 'package:flutter_tasks5/page10.dart';
import 'package:flutter_tasks5/page11.dart';
import 'package:flutter_tasks5/page2.dart';
import 'package:flutter_tasks5/page3.dart';
import 'package:flutter_tasks5/page4.dart';
import 'package:flutter_tasks5/page6.dart';
import 'package:flutter_tasks5/page7.dart';
import 'package:flutter_tasks5/page8.dart';
import 'package:flutter_tasks5/page9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: Page11(),
    );
  }
}

