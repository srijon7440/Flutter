import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        title: Text(
          "Vanguard",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
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
    );
  }
}
