import 'package:faacebook_lite/app%20screen/maintab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Facebook',
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}
