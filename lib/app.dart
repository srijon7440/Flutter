import 'package:flutter/material.dart';
import 'package:flutter_begins/Assignments/ass1.dart';
import 'package:flutter_begins/Assignments/exam1.dart';
import 'package:flutter_begins/alert.dart';
import 'package:flutter_begins/apps/calculator.dart';
import 'package:flutter_begins/apps/countingApp.dart';
import 'package:flutter_begins/apps/moneyManager.dart';
import 'package:flutter_begins/apps/water_Meter.dart';
import 'package:flutter_begins/drwaer.dart';
import 'package:flutter_begins/ownWidget.dart';
import 'package:flutter_begins/route.dart';
import 'package:flutter_begins/stack.dart';
import 'grid.dart';
import 'home.dart';
import 'input.dart';
import 'img.dart';
import 'listview.dart';
import 'route.dart';
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            side: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          )
        ),
        textTheme: TextTheme(
          displayLarge:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange
          )
        ),
        appBarTheme: AppBarTheme(
          color: Colors.orange
        ),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.deepPurple,
                  width: 1,
                ),
              ),
              hintStyle: TextStyle(
                color: Colors.deepPurple,
              ),

              labelStyle: TextStyle(
                  color: Colors.deepPurple
              )
          )
      ),
    title: 'Welcome',
    initialRoute:  '/MoneyManager',
      routes: {
        '/Drawer':(context)=>Drawerr(),
        '/Alert':(context)=>Alertt(),
        '/ownwidget':(context)=>Ownwidgett(),
        '/stack':(context)=>Stackk(),
        '/routee':(context)=>Routee(),
        '/Calculator':(context)=>CalculatorApp(),
        '/WaterMeter':(context)=>WaterMeter(),
        '/MoneyManager':(context)=>MoneyManager()
      },
    );
  }
}
