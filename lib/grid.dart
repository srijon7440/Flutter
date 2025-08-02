import 'package:flutter/material.dart';

class Grids extends StatelessWidget {
  const Grids({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
            "Vanguard V1.1",
          style: TextStyle(
            backgroundColor: Colors.transparent,
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    //   body: GridView.count(
    //       crossAxisCount: 2,
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     children:List.generate(10, (index){
    //       return Card(
    //         color: Colors.pink.shade900,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Icon(
    //               Icons.money,
    //               size: 40,
    //               color: Colors.white,
    //             ),
    //             SizedBox(height: 10,),
    //             Text(
    //               style: TextStyle(
    //                 fontSize: 13,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.white
    //               ),
    //                 'Money brings Happiness'),
    //           ],
    //         ),
    //       );
    // })
    //   ),
      //==================================================
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (context,index){
            return Card(
              elevation: 10,
              color: Colors.pink.shade900,
                     child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.money,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                                'Money brings Happiness'),
                           ],
                         ),
                       );
          }
      ),
    );
  }
}
