// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  
  List users;
  Details({super.key,  required this.users});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.users[index]['name'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.users[index]['email'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.users[index]['mobile'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.users[index]['gender'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.users[index]['district'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                widget.users.clear();
              },
              child: Text('CANCEL'))
        ],
      ),
    );
  }
}
