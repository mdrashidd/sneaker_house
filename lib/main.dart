import 'package:flutter/material.dart';
import 'package:sneaker_house/pages/home_page.dart';
import 'package:sneaker_house/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : WelcomePage(),
      routes: {
        '/homepage': (context)=>HomePage(),
        '/welcomepage':(context)=>WelcomePage(),

      },
    );
  }
}

