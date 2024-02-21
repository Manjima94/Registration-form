// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  String? gender = '';
  var name = TextEditingController();
  var email = TextEditingController();
  var mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(
            child: Text(
          'REGISTRATION FORM',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      
      body: Column(
        children: [

         // name field //

          
          Row(
            children: [
              Text(
                'NAME :   ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                  height: 30,
                  width: 300,
                  child: TextFormField(
                    controller: name,
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ))
            ],
          ),

          // email filed //
          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'EMAIL :   ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      controller: email,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    )),
              )
            ],
          ),

          
          // mobile field //

          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'MOBILE : ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      controller: mobile,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    )),
              )
            ],
          ),

          
          // gender field //

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Text(
                    'GENDER :',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: 140,
                    child: RadioListTile(
                        value: 'Male',
                        title: Text('Male'),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        }),
                  ),
                  SizedBox(
                    width: 160,
                    child: RadioListTile(
                        value: 'Female',
                        title: Text('Female'),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        }),
                  ),
                  SizedBox(
                    width: 140,
                    child: RadioListTile(
                        value: 'Other',
                        title: Text('Other'),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),

      
        // Button to submit datas //
          
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print(name.text);
                      print(email.text);
                      print(mobile.text);
                      print(gender);
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),

                // button to cancel all datas //

                
                ElevatedButton(
                    onPressed: () {
                      name.clear();
                      email.clear();
                      mobile.clear();
                    },
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
