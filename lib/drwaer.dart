import 'package:flutter/material.dart';

import 'alert.dart';
import 'grid.dart';
import 'input.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade100,
          title: Text(
            "Vanguard",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grade),
                text: "Grade",
              ),
              Tab(
                icon: Icon(Icons.power),
                text: "11000",
              ),
              Tab(
                icon: Icon(Icons.shield),
                text: "0",
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius:42,
                    backgroundImage: NetworkImage('https://lurei.wordpress.com/wp-content/uploads/2011/01/cardfight-vanguard-ep-2-4.jpg'),
                  ),
                  Text('Dragonic Overlord',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('zihadahmedsrizon@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ],
              )
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                dense: true,
                title: Text('Description'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('Rules'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('Clan'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('Legion'),
                onTap: (){},
              ),
              Divider(),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Container(
            //   color: Colors.red,
            //   height: 200,
            //   child: Center(
            //     child: Text(
            //       "Grade",
            //     style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.blue,
            //   height: 200,
            //   child: Center(
            //     child: Text(
            //       "Power",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.yellow,
            //   height: 200,
            //   child: Center(
            //     child: Text(
            //       "Shield",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // ),
            Alertt(),
            Grids(),
            Input()
          ],
        ),
      ),
    );
  }
}
