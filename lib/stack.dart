import 'package:flutter/material.dart';

class Stackk extends StatelessWidget {
  const Stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "Vanguard Stack",
          style: TextStyle(
            backgroundColor: Colors.transparent,
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.pink.shade900,
                height: 200,
                width: 200,
              ),
              Positioned(
                top: 15,
                bottom: 15,
                left: 15,
                right: 15,
                child: Container(
                  color: Colors.black87,
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned(
                top: 25,
                bottom: 25,
                right: 25,
                left: 25,
                child: Container(
                  color: Colors.red.shade900,
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/8d/25/a5/8d25a55fd20bb3b371ac83c2548a4e38.jpg',

                ),
              ),
              Positioned(
                bottom: 10,
                right: 8,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://c0.klipartz.com/pngpicture/397/252/gratis-png-pelea-de-cartas-juego-de-cartas-coleccionables-de-vanguardia-the-vanguard-group-psyqualia-cardfight-vanguard-thumbnail.png',

                  ),
                ),
              ),
              Positioned(
                bottom: 24,
                right: 18,
                left: 121 ,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.shade900
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
            Container(
              height: 5,
              width: double.infinity,
              color: Colors.grey[300],
            ),
              AnimatedContainer(duration: Duration(seconds: 3),
              height: 5,
              width:200,
              color:Colors.blue,
              )
            ],

          ),
        ],
      ),
    );
  }
}
