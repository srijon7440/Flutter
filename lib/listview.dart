import 'package:flutter/material.dart';
class ListV extends StatefulWidget {
  final name;
  const ListV({super.key, this.name});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: Text(
          "Vanguard v1.0",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 50,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete),
              title: Text('srijon'),
              subtitle: Text(widget.name),
            ),
          );
          }),
    );
  }
}
