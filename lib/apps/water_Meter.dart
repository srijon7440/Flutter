import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/waterfilling.dart';

class WaterMeter extends StatefulWidget {
  const WaterMeter({super.key});

  @override
  State<WaterMeter> createState() => _WaterMeterState();
}

class _WaterMeterState extends State<WaterMeter> {
  int currentCapacity=0;
  final int capacity=5000;
  Timer ? _time;

  @override
  void initState() {
    super.initState();

    _time=Timer.periodic(Duration(seconds: 1), (timer){
      if(currentCapacity>0) {
        setState(() {
          currentCapacity=(currentCapacity-1).clamp(0, capacity);

        });
      }
    });
  }

  void addWater(int amount) {
    setState(() {
      currentCapacity=(currentCapacity+amount).clamp(0, capacity);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    double percentage=(currentCapacity/capacity).clamp(0, 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Water Meter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(
            'https://static.wikia.nocookie.net/cardfight/images/f/f1/Dragonic_Waterfall_%28Full_Art%29.png/revision/latest/scale-to-width-down/250?cb=20200421040536',
          ),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Text(
                      'Current Tank Status',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      '${currentCapacity} LTR',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Stack(
                alignment: Alignment.center,
                children:[
                  Container(
                    height: 90,
                width: 90,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.blue,
                    color: Colors.deepPurpleAccent.shade700,
                    strokeWidth: 10,
                    value: percentage,
                  ),
                ),
                  Text(
                    '${(percentage*100).toInt()}%',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
              ),
              SizedBox(height: 4,),
              Wrap(
                spacing: 20,//horizontal
                runSpacing: 1,//vertical
                children: [
                  waterFilling(amount: 100, onClick: ()=>addWater(100),),
                  waterFilling(amount: 200, onClick: ()=>addWater(200),),
                  waterFilling(amount: 300, onClick: ()=>addWater(300),),
                  waterFilling(amount: 4000, onClick: ()=>addWater(4000),icon: Icons.water_drop_sharp,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            currentCapacity=0;
                          });
                        }, child: Text('Empty Tank')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                           currentCapacity= (currentCapacity-500).clamp(0, capacity);
                          });
                        }, child: Text('Remove 500 LTR')),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

