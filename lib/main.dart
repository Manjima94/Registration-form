import 'package:flutter/material.dart';
import 'package:registration_form/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,colorSchemeSeed: Color.fromARGB(255, 0, 0, 0)
      ),
      home: const Reg(),
    );
  }
}
