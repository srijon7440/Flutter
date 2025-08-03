import 'package:flutter/material.dart';

import 'widgets/avatar.dart' show Avatar;

class Ownwidgett extends StatelessWidget {
  const Ownwidgett({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(24)
            ),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Avatar(img: 'https://i.pinimg.com/1200x/b3/93/9f/b3939f551fbc59298fcf95d8c8f3e042.jpg',txt: 'Burn Everything to Ashes',img2: 'https://i.pinimg.com/736x/4f/d1/05/4fd105c7c67d87d1319a4d713bab52c1.jpg',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Avatar(img: 'https://i.pinimg.com/1200x/19/3f/e9/193fe9c956b51455704b72f99a6b0996.jpg',txt: 'Destroy All',img2: 'https://i.pinimg.com/736x/8e/74/12/8e74127590b87c3ae8db2dec01a3428d.jpg',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Avatar(img: 'https://i.pinimg.com/1200x/27/22/06/2722062be2f5932bd73a0e4c48e559fd.jpg',txt: 'stop all time',img2: 'https://i.pinimg.com/736x/8e/84/6f/8e846f90dc2b3d588d7eb7ae29aafb7b.jpg',),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

