import 'package:flutter/material.dart';
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
    home: Imagee(),
    );
  }
}
