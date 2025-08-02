import 'package:flutter/material.dart';

class  Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneC = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: Text(
          "Vanguard",
          style: TextStyle(
            color: Colors.red.shade800,
            fontSize: 44,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               keyboardType: TextInputType.phone,
               controller: phoneC,
               decoration: InputDecoration(
                 hintText: 'Enter Phone Number',
                 labelText: 'Phone Number',
                 suffixIcon: Icon(Icons.check),
                 prefix: Icon(Icons.phone_iphone),
                 hintStyle: TextStyle(
                   color: Colors.black,
                 ),
                 labelStyle: TextStyle(
                   color: Colors.teal.shade700,
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(50)
                 )
               ),
             ),
           ),
            SizedBox(
              width: 50,height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    prefix: Icon(Icons.lock),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.teal.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
              onPressed: (){
                if(phoneC.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Enter Phone Number'))
                  );
                }
              else if(phoneC.text.length!=11) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('enter valid phone number'))
                );
              }
              else if(phoneC.text.length==11){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:
                      Icon(Icons.check))
                );

              }
            }
                , child: Text(
                style: TextStyle(
                  fontSize: 40,
                ),
                    'Log In'
                ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                onPressed: (){
                  phoneC.clear();
                  password.clear();
                }
                , child: Text(
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  'Clear'
              ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade400,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(3,8)
                  )
                ]
              ),
              child: Text(
                'Container',
                style:TextStyle(fontSize: 30)
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
