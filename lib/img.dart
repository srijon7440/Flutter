import 'package:flutter/material.dart';

import 'listview.dart';

class Imagee extends StatelessWidget {
   Imagee({super.key});

   final _formKey = GlobalKey<FormState>();
   TextEditingController phone=TextEditingController();
   TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: Text(
          "Vanguard v0.0",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Image.asset(
              'asset/cv.png'
          ),
          Image.network(
            'https://w7.pngwing.com/pngs/240/325/png-transparent-cardfight-vanguard-g-the-vanguard-group-touken-ranbu-game-vanguard-love-miscellaneous-game-thumbnail.png',
            height: 100,
            width: 100,
          ),
          Text(
              'Login with phone and password',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 10,
              height: 10,
          ),
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                            children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: phone,
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Enter Phone Number';
                      }
                      else if(value.length<11||value.length>11){
                        return 'Enter valid Phone Number';
                      }
                      else{ return null;}
                    },
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Enter Password';
                      }
                      else if(value.length<6){
                        return 'Enter valid Password';
                      }
                      else {return null;}

                    },
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
                            ],
                          ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListV(name: phone.text,)));
              }
            }, child: Text('Login')),
          )
        ],
      ),
    );
  }
}
