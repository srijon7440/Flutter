import 'package:flutter/material.dart';
import 'package:flutter_begins/drwaer.dart';

class Counter extends StatefulWidget {
  Counter({super.key}){
    print('Hello Constructor of Extend Class');
  }

  @override
  State<Counter> createState() {
    print('Hello Method of createState');
   return  _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int count=0;

  @override
  void initState(){
    super.initState();
    print('Hello initState');
  }
  @override
  void deactivate(){
    print('Hello Deactivate');
    super.deactivate();
  }
  @override
  void dispose(){
    print('Hello dispose');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counting App"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images-na.ssl-images-amazon.com/images/I/71yHsjCTGjL.jpg',
              ),
              fit:BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.6),
              ),
              child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    count--;
                    print(count);
                  });
                }, child: Text(
                    '-',
                  style: TextStyle(fontSize: 35),
                )),
                // Spacer(),
                ElevatedButton(onPressed: (){
                  setState(() {
                    count++;
                    print(count);
                  });
                }, child: Text(
                    '+',
                  style: TextStyle(fontSize: 35),
                )),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Drawerr()));
                }, child: Text('Next Class'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
