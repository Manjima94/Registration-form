// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:registration_form/detail.dart';

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
  String Dropdownvalue = 'KASARGOD';
  var districts = [
    'KASARGOD',
    'KANNUR',
    'WAYANAD',
    'KOZHIKODE',
    'PALAKKAD',
    'IDUKKI'
  ];
  List l1 = [];

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
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                )
              ],
            ),
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
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      'GENDER :',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
            Row(
              children: [
                Text(
                  'DISTRICT :    ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                DropdownButton(
                    value: Dropdownvalue,
                    items: districts.map((String districts) {
                      return DropdownMenuItem(
                        value: districts,
                        child: Text(districts),
                      );
                    }).toList(),
                    onChanged: (String? newvalue) {
                      setState(() {
                        Dropdownvalue = newvalue!;
                      });
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             Details(data: (name.text, email.text)
                        //                 // data: name.text,
                        //                 // email.text,
                        //                 // mobile.text,

                        //                 // districts

                        //                 )));

                        print(name.text);
                        print(email.text);
                        print(mobile.text);
                        print(gender);
                        print(Dropdownvalue);
                        l1.add({
                          'name': name.text,
                          'email': email.text,
                          'mobile': mobile.text,
                          'gender': gender,
                          'district': Dropdownvalue
                        });
                        print(l1);
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Details(users: l1);
                          },
                        ));
                      },
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
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
        ));
  }
}
