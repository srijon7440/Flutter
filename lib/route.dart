import 'package:flutter/material.dart';
import 'package:flutter_begins/alert.dart';
import 'package:flutter_begins/input.dart';

class Routee extends StatelessWidget {
  const Routee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Routing",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/Alert');
          }, child: Text("Alert")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/ownwidget');
          }, child: Text("OwnWidget")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/Drawer');
          }, child: Text("Drawer")),
          ElevatedButton(onPressed: (){
            Navigator.push(context,PageRouteBuilder(
                pageBuilder: (context,animation,secondaryAnimation)=>Alertt(),
              transitionsBuilder: (context,animation,secondaryAnimation,child){
                  const begin=Offset(1.0, 0);
                  const end=Offset.zero;
                  const curve=Curves.ease;
                  var tween=Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
                  return SlideTransition(position: animation.drive(tween),child: child,);
              }
            ));
          }, child: Text("Alert2")),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Input()));
          }, child: Text("Back to Innitial")),
          TextField(),
          Text(
              'GG',
            style: Theme.of(context).textTheme.displayLarge

          )
        ],
      ),
    );
  }
}
