import 'package:flutter/material.dart';

class Alertt extends StatelessWidget {
  const Alertt({super.key});
  @override
  Widget build(BuildContext context) {
    //0
    Size screenSize=MediaQuery.of(context).size;
    //1
    void customizeAlert(){
      showDialog(context: context,
          barrierDismissible:false,
          builder: (context)=>AlertDialog(
        title: Text('Version1.2'),
        content: Text('upgrade Card?'),
        actions: [
          TextButton(onPressed: (){
            
          }, child: Text('yes')),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('No'))
        ],
      )
      );
    }
    //2
    void iconAlert(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Overlord'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.sim_card_sharp,size: 40,color: Colors.red.shade900,),
                SizedBox(width: 10,),
                Text('Vanguard')
              ],
            ),
            SizedBox(height: 5,),
            Text('Welcome, fellow Cardfighter, to the world of Cardfight!! Vanguard! Imagine it! Exciting battles await on the Earth-like Planet Cray!Lead the charge as the Vanguard, and show your allies the path to victory!',
              style: TextStyle(color: Colors.blue),

              )
          ],
        ),
        actions: [
          ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('OK'))
        ],

      ));
    }
    //3
    void soulBlast(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text('Select Soul Card'),
        children: [
          SimpleDialogOption(
            child: Text('Blaster Blade'),
          ),
          SimpleDialogOption(
            child: Text('wingul'),
          ),
          SimpleDialogOption(
            child: TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3)
                )
              ),
            ),
          )
        ],
      ));
    }
    //4
    void showDamageZone(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Counter Charge',style: TextStyle(fontSize: 18),),
            ListTile(
              title: Text('Card 1'),
              onTap: (){},
              onLongPress: (){},
            ),
            ListTile(
              title: Text('Card 2'),
            ),
            ListTile(
              title: Text('Card 3'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('done')),
            )
          ],
        ),
      ));
    }
    //======================
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "Vanguard Alert",
          style: TextStyle(
            backgroundColor: Colors.transparent,
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black87,
                  height: screenSize.height*0.5,
                  width: screenSize.width*0.5,
                  child: Image.asset('asset/cv.png'),
                ),
              ),
              Text(
                  'Stand Up My Vanguard!!',
                style: TextStyle(
                  fontSize: screenSize.width>600? 40:20
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade900,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                customizeAlert();
              }, child: Text('Alert!')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade900,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                iconAlert();
              }, child: Text('Greetings')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade900,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                soulBlast();
              }, child: Text('Soul Blast')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade900,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                showDamageZone();
              }, child: Text('Damage Zone')),
            ],
          ),
        ),
      ),
    );
  }
}
