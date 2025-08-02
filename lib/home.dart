import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home ({super.key});
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade800,
  appBar: AppBar(
    title:Text(
        'Vanguard',
            style: TextStyle(
        fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    ),
    backgroundColor: Colors.blue.shade300,
    foregroundColor: Colors.red.shade900,

  ),
    body:Center(

      child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Welcome',
              style: TextStyle(
                backgroundColor: Colors.pink.shade700,
                    fontSize: 26,
              ),
            ),
            SizedBox(
              height:10,
            ),
            Text(
              'Cardfighter!!',
              style: TextStyle(
                backgroundColor: Colors.pink.shade700,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              debugPrint('gg');
            }, child: Text('click')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                )

              ),
                onPressed: (){
                debugPrint("welldone");
                }, child: Text('click 2')),
            Icon(
                Icons.phone_iphone_outlined,
              size: 34,
              color: Colors.pink.shade700,
            ),
            IconButton(onPressed: () {
              debugPrint('deleted');

            }, icon: Icon(
              Icons.delete,
              color: Colors.yellow,
            ),
            ),
            IconButton(onPressed: (){
              debugPrint('calling');
            }, icon:Icon(
              Icons.call,
              color: Colors.tealAccent,
              size: 34,
            ),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),

                ),
                 ),
                onPressed: (){
                debugPrint('clicked');

                }, child: Text(
                'text button',
              style: TextStyle(
                backgroundColor: Colors.tealAccent,
                fontSize: 39,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(color: Colors.black),

                ],
              ),

            ),
            ),

          ],
        ),
    ),
    ) ,
    );
  }
}
