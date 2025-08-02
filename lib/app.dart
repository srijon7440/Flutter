import 'package:flutter/material.dart';
import 'package:flutter_begins/Assignments/ass1.dart';
import 'package:flutter_begins/Assignments/exam1.dart';
import 'package:flutter_begins/alert.dart';
import 'package:flutter_begins/drwaer.dart';
import 'package:flutter_begins/stack.dart';
import 'grid.dart';
import 'home.dart';
import 'input.dart';
import 'img.dart';
import 'listview.dart';
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Welcome',
    home: Exam1(),
    );
  }
}
