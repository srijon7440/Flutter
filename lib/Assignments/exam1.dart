import 'package:flutter/material.dart';

class Exam1 extends StatelessWidget {
  const Exam1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:
        Row(
          children: [
            Text(
              "Add Employe",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              border: UnderlineInputBorder()
              )
            ),
          SizedBox(height: 20),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Age",
                  border: UnderlineInputBorder()
              )
          ),
          SizedBox(height: 20),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Salary",
                  border: UnderlineInputBorder()
              )
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple
                ),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Button Pressed!'))
                  );
                }, child: Text('Add Employee')),
          )
        ],
      ),
    );
  }
}
